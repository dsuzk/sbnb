
#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include "core/branch_and_bound_class.h"
#include "example_model/example_cplex_model_class.h"

TEST(BranchAndBoundClass, OptimizationTest) {

  IloEnv env;
  IloCplex cplex(env);
  IloModel model(env);
  IloNumVarArray variables(env);
  IloRangeArray constraints(env);
  IloObjective objective(env);

  char* path = (char*) "test/test_models/easy_max_model_1.lp";

  cplex.importModel(model, path, objective, variables, constraints);


  ExampleCplexModel example_model;
  BranchAndBound branchAndBound(example_model.model, example_model.variables);
  branchAndBound.optimize();

  IloNumArray solution_values = branchAndBound.GetBestSolution();
  IloNum expected_solutions[2] = {2, 2};

  ASSERT_EQ(2, solution_values.getSize());

  for (int i = 0; i < 2; ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }

  example_model.environment->end();
}

