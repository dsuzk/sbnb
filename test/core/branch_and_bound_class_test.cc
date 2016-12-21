
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


class ModelTest : public ::testing::TestWithParam<const char*> {};

TEST_P(ModelTest, SolveExampleModel) {
  TestModelLoader model_loader(GetParam());

  BranchAndBound bnb(model_loader.model, model_loader.variables);
  bnb.optimize();
  IloNumArray acutal_solution_values = bnb.GetBestSolution();
  double objective_value = bnb.GetGlobalDualBound();

  IloNumArray expected_solution_values(*model_loader.expected_solution_values);
  double expected_objective_value = model_loader.expected_objective_value;

  ASSERT_DOUBLE_EQ(expected_objective_value, objective_value);
  model_loader.environment->end();
}

INSTANTIATE_TEST_CASE_P(BranchAndBound,
                        ModelTest,
                        ::testing::Values("test/test_models/qpex.lp",
                                          "test/test_models/location.lp",
                                          "test/test_models/easy_max_model_1.lp",
                                          "test/test_models/easy_min_model_1.lp"));

