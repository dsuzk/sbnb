
#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include "core/branch_and_bound_class.h"
#include "test_models/test_model_loader_class.h"

TEST(BranchAndBoundClass, OptimizationTest) {

  TestModelLoader model_loader((char*) "test/test_models/easy_max_model_1.lp");

  BranchAndBound branchAndBound(model_loader.model, model_loader.variables);
  branchAndBound.optimize();

  IloNumArray solution_values = branchAndBound.GetBestSolution();
  IloNum expected_solutions[2] = {2, 2};

  ASSERT_EQ(2, solution_values.getSize());

  for (int i = 0; i < 2; ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }

  model_loader.environment->end();
}

