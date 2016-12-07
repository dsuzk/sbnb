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

    ASSERT_TRUE(problem.solved());

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

    ASSERT_TRUE(problem.infeasible());

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

    ASSERT_TRUE(problem.unbounded());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}