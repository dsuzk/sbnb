
#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include "core/branch_and_bound_class.h"
#include "test_models/test_model_loader_class.h"

TEST(BranchAndBoundClass, relaxation_test) {
  TestModelLoader model_loader((char*) "test/test_models/variable_test_model.lp");

  IloNumVarArray vars = *model_loader.variables;
  IloCplex cplex = *model_loader.cplex;

  for (int i = 0; i < vars.getSize(); ++i) {
    ASSERT_TRUE(vars[i].getType() == 1); // 1 = INT, 2 = FLOAT, 3 = Bool
  }
  cplex.solve();
  ASSERT_TRUE(cplex.getObjValue() == 2);

  model_loader.model->add(IloConversion(cplex.getEnv(), vars, ILOFLOAT));
  cplex.solve();
  ASSERT_TRUE(cplex.getObjValue() == 2.5);

  model_loader.environment->end();
}

TEST(BranchAndBoundClass, OptimizationMaxTest) {
  TestModelLoader model_loader((char*) "test/test_models/easy_max_model_1.lp");

  BranchAndBound bnb(model_loader.model, model_loader.variables);
  bnb.optimize();
  IloNumArray solution_values = bnb.GetBestSolution();
  double objective_value = bnb.GetGlobalDualBound();

  IloNumArray expected_solution_values(*model_loader.expected_solution_values);
  double expected_objective_value = model_loader.expected_objective_value;

  ASSERT_DOUBLE_EQ(expected_objective_value, objective_value);

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution_value = solution_values[i];
    IloNum expected_solution_value = expected_solution_values[i];
    ASSERT_EQ(actual_solution_value, expected_solution_value);
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

  
TEST(ModelTest, location_lp) {
  char* model_path = (char*)"test/test_models/location.lp";
  TestModelLoader model_loader(model_path);

  BranchAndBound bnb(model_loader.model, model_loader.variables);
  bnb.optimize();
  IloNumArray solution_values = bnb.GetBestSolution();
  double objective_value = bnb.GetGlobalDualBound();

  IloNumArray expected_solution_values(*model_loader.expected_solution_values);
  double expected_objective_value = model_loader.expected_objective_value;

  ASSERT_DOUBLE_EQ(expected_objective_value, objective_value);

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution_value = solution_values[i];
    IloNum expected_solution_value = expected_solution_values[i];
    ASSERT_EQ(actual_solution_value, expected_solution_value);
  }

  model_loader.environment->end();
}

TEST(ModelTest, qpex_lp) {
  char* model_path = (char*)"test/test_models/qpex.lp";
  TestModelLoader model_loader(model_path);

  BranchAndBound bnb(model_loader.model, model_loader.variables);
  bnb.optimize();
  IloNumArray solution_values = bnb.GetBestSolution();
  double objective_value = bnb.GetGlobalDualBound();

  IloNumArray expected_solution_values(*model_loader.expected_solution_values);
  double expected_objective_value = model_loader.expected_objective_value;

  ASSERT_DOUBLE_EQ(expected_objective_value, objective_value);

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution_value = solution_values[i];
    IloNum expected_solution_value = expected_solution_values[i];
    ASSERT_EQ(actual_solution_value, expected_solution_value);
  }

  model_loader.environment->end();
}
