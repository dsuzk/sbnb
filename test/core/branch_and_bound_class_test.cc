
#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include "core/branch_and_bound_class.h"
#include "test_models/test_model_loader_class.h"

TEST(BranchAndBoundClass, OptimizationMaxTest) {

  TestModelLoader model_loader((char*) "test/test_models/easy_max_model_1.lp");

  BranchAndBound branchAndBound(model_loader.model, model_loader.variables);
  branchAndBound.optimize();

  IloNumArray solution_values = branchAndBound.GetBestSolution();
  IloNum expected_solutions[2] = {2, 2};

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }

  model_loader.environment->end();
}

TEST(BranchAndBoundClass, OptimizationMinTest) {

  TestModelLoader model_loader((char*) "test/test_models/easy_min_model_1.lp");

  BranchAndBound branchAndBound(model_loader.model, model_loader.variables);

  branchAndBound.optimize();

  IloNumArray solution_values = branchAndBound.GetBestSolution();
  IloNum expected_solutions[5] = {1, 0, 1, 0, 2};

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }

  model_loader.environment->end();
}
