#include <ilcplex/ilocplex.h>
#include <gtest/gtest.h>
#include "core/branch_and_bound.h"
#include "utils/test_model_loader.h"

TEST(BranchAndBoundClass, relaxation_test) {
  TestModelLoader model_loader((char*) "test/models/variable_test_model.lp");

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
  Branching* branching_rule = new FirstFractional(model_loader.cplex->getParam(IloCplex::EpRHS));
  NodeSelection* node_selection = new DepthFirstTraversal();
  BranchAndBound bnb(model_loader.model, model_loader.variables, branching_rule, node_selection, false);

  try {
    bnb.optimize();
  } catch (IloException ex) {
    std::cerr << "Error: " << ex << std::endl;
  }

  IloNumArray acutal_solution_values = bnb.GetBestSolution();
  double objective_value = bnb.GetGlobalPrimalBound();

  IloNumArray expected_solution_values(*model_loader.expected_solution_values);
  double expected_objective_value = model_loader.expected_objective_value;
  ASSERT_DOUBLE_EQ(expected_objective_value, objective_value);
  model_loader.environment->end();
}

INSTANTIATE_TEST_CASE_P(BranchAndBound,
                        ModelTest,
                        ::testing::Values("test/models/qpex.lp",
                                          "test/models/location.lp",
                                          "test/models/easy_max_model.lp",
                                          "test/models/easy_min_model.lp",
                                          "test/models/sample1.mps",
                                          "test/models/sample3.mps",
                                          "test/models/sample4.mps",
                                          "test/models/sample5.mps",
                                          "test/models/sample6.mps",
                                          "test/models/sample7.mps",
                                          "test/models/sample8.mps",
                                          "test/models/sample9.mps",
                                          "test/models/sample10.mps",
                                          "test/models/sample11.mps"));

