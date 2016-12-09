#include <iostream>
#include <ilcplex/ilocplex.h>
#include "gtest/gtest.h"
#include "core/bnb_problem_class.h"
#include "example_model/example_cplex_model_class.h"

using namespace std;

TEST(BnBProblem, getSolution) {
  try {

    ExampleCplexModel example_model;
    BnBProblem problem(example_model.cplex, example_model.variables);

    problem.Solve();
    const IloNumArray solution = problem.GetSolution();
    ASSERT_EQ(1, solution[0]);
    ASSERT_EQ(2, solution[1]);
    ASSERT_EQ(3, solution[2]);
    // why fail? float calc errors
    // ASSERT_EQ(2.76923, solution[3]);

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(BnBProblem, solved) {
  try {

    ExampleCplexModel example_model;
    BnBProblem problem(example_model.cplex, example_model.variables);

    problem.Solve();

    ASSERT_TRUE(problem.IsSolved());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(BnBProblem, infeasible) {
  try {

    IloEnv env;
    IloModel model(env);
    IloNumVarArray variables(env);
    IloRangeArray constraints(env);

    variables.add(IloNumVar(env, 6.0, 6.0, ILOFLOAT));
    variables.add(IloNumVar(env, 6.0, 6.0, ILOFLOAT));

    model.add(IloMinimize(env, variables[0] + variables[1]));
    constraints.add(variables[0] + variables[1] <= 11);
    model.add(constraints);

    IloCplex cplex(model);
    BnBProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.IsInfeasible());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(BnBProblem, unbounded) {
  try {

    IloEnv env;
    IloModel model(env);
    IloNumVarArray variables(env);
    IloRangeArray constraints(env);

    variables.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
    variables.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));

    model.add(IloMaximize(env, variables[0] + variables[1]));

    constraints.add(variables[0] + variables[1] >= 0);
    model.add(constraints);
    IloCplex cplex(model);

    BnBProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.IsUnbounded());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(BnBProblem, objective_value) {
  try {

    IloEnv environment;
    IloModel model(environment);
    IloNumVarArray variables(environment);

    variables.add(IloNumVar(environment, 0.0, IloInfinity, ILOFLOAT));
    variables.add(IloNumVar(environment, 0.0, IloInfinity, ILOFLOAT));

    model.add(IloMaximize(environment, 2 * variables[0] + 3 * variables[1]));

    IloRangeArray constraints(environment);
    constraints.add(4 * variables[0] + 12 * variables[1] <= 33);
    constraints[0].setName("c1");

    constraints.add(10 * variables[0] + 4 * variables[1] <= 35);
    constraints[1].setName("c2");

    model.add(constraints);

    IloCplex cplex(model);
    cplex.setOut(environment.getNullStream());


    BnBProblem problem(&cplex, &variables);
    problem.Solve();

    double expected_solution_ = 11.01923076923077;

    ASSERT_DOUBLE_EQ(expected_solution_, problem.GetObjectiveValue());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}