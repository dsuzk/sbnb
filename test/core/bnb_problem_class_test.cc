#include <iostream>
#include <ilcplex/ilocplex.h>
#include "gtest/gtest.h"
#include "core/optimization_problem_class.h"
#include "example_model/example_cplex_model_class.h"

using namespace std;

TEST(OptimizationProblem, getSolution) {
  try {

    ExampleCplexModel example_model;
    OptimizationProblem problem(example_model.cplex, example_model.variables);

    problem.Solve();
    const IloNumArray solution = problem.GetSolution();
    ASSERT_DOUBLE_EQ(2.7692307692307692, solution[0]);
    ASSERT_DOUBLE_EQ(1.8269230769230766, solution[1]);

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(OptimizationProblem, solved) {
  try {

    ExampleCplexModel example_model;
    OptimizationProblem problem(example_model.cplex, example_model.variables);

    problem.Solve();

    ASSERT_TRUE(problem.IsSolved());
    ASSERT_FALSE(problem.IsInfeasible());
    ASSERT_FALSE(problem.IsUnbounded());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(OptimizationProblem, infeasible) {
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
<<<<<<< HEAD
    OptimizationProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.IsInfeasible());
=======
    cplex.setOut(env.getNullStream());

    BnBProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.infeasible());
    ASSERT_FALSE(problem.unbounded());
    ASSERT_FALSE(problem.solved());
>>>>>>> test(bnb_problem) assert on side effects

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(OptimizationProblem, unbounded) {
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
    cplex.setOut(env.getNullStream());

    OptimizationProblem problem(&cplex, &variables);
    problem.Solve();

<<<<<<< HEAD
    ASSERT_TRUE(problem.IsUnbounded());
=======
    ASSERT_TRUE(problem.unbounded());
    ASSERT_FALSE(problem.infeasible());
    ASSERT_FALSE(problem.solved());
>>>>>>> test(bnb_problem) assert on side effects

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

TEST(OptimizationProblem, objective_value) {
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


    OptimizationProblem problem(&cplex, &variables);
    problem.Solve();

    double expected_solution_ = 11.01923076923077;

    ASSERT_DOUBLE_EQ(expected_solution_, problem.GetObjectiveValue());

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}

