
#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include <iostream>
#include "core/branch_and_bound_class.h"
#include "example_model/example_cplex_model_class.h"

TEST(BranchAndBoundClass, OptimizationTest) {

  ExampleCplexModel example_model;
  BranchAndBound branchAndBound(example_model.model, example_model.variables);

  try {
    branchAndBound.optimize();
  } catch (IloException &exception) {
    std::cerr << "ERROR: " << exception << std::endl;
  }

  IloNumArray solution_values = branchAndBound.GetBestSolution();
  IloNum expected_solutions[2] = {2, 2};

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }

  example_model.environment->end();
}

