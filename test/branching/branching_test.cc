#include <gtest/gtest.h>
#include <ilcplex/ilocplex.h>
#include <branching/first_fractional.h>
#include <core/optimization_problem_class.h>
#include "utils/test_model_loader_class.h"

TEST(Branching, branch_Test) {

  TestModelLoader model_loader((char*) "test/models/easy_max_model_1.lp");

  OptimizationProblem root_problem(model_loader.cplex, model_loader.variables);
  root_problem.Solve();
  IloNumArray solution = root_problem.GetSolution();

  FirstFractional branching(model_loader.cplex->getParam(IloCplex::EpRHS));
  const std::vector<IloConstraint*> expected_sub_problems = branching.Branch(solution, *model_loader.variables);

  double expected_solution_of_branch1[2] = {3.0, 1.25};
  double expected_solution_of_branch2[2] = {2.0, 2.0833333333333335};

  double *expected_solution[2] = {expected_solution_of_branch1, expected_solution_of_branch2};

  for (int i = 0; i < expected_sub_problems.size(); ++i) {

    IloConstraint* constraint = expected_sub_problems[i];
    OptimizationProblem *sub_problem = new OptimizationProblem(model_loader.cplex, model_loader.variables, constraint);
    sub_problem->Solve();
    solution = sub_problem->GetSolution();

    for (int j = 0; j < solution.getSize(); ++j) {
      double actual_solution = solution[j];
      ASSERT_DOUBLE_EQ(actual_solution, expected_solution[i][j]);
    }
  }

  model_loader.environment->end();
}

TEST(IndexOfFirstFractional, FirstFractional_Test) {
  IloEnv env;
  IloNumVarArray vars(env);
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));

  IloNumArray numbers(env);
  numbers.add(1.0000001);
  numbers.add(2.000001);
  numbers.add(3.4);
  numbers.add(5.0);
  numbers.add(6.0);

  const double kFloatPrecision = 0.000001; // According to IloCplex::EpRHS
  FirstFractional first_fractional(kFloatPrecision);
  std::vector<IloConstraint*> actual_sub_problems = first_fractional.Branch(numbers, vars);

  IloConstraint expected_lesser_constraint = IloConstraint(vars[1] <= 2);
  IloConstraint expected_greater_constraint = IloConstraint(3 <= vars[1]);
  std::vector<IloConstraint> expected_sub_problems;
  expected_sub_problems.insert(expected_sub_problems.begin(), expected_lesser_constraint);
  expected_sub_problems.insert(expected_sub_problems.begin(), expected_greater_constraint);

  //Hack to compare contraints, since cplex offer no methods therefor
  std::stringstream string_representation_expected;
  std::stringstream string_representation_actual;

  for (int i = 0; i < actual_sub_problems.size(); ++i) {
    string_representation_expected.str(""); 
    string_representation_actual.str("");
    string_representation_actual<< *actual_sub_problems[i];
    string_representation_expected << expected_sub_problems[i];
    ASSERT_TRUE(string_representation_actual.str() == string_representation_expected.str());
  }
}

TEST(NoFractionalFound, FirstFractional_Test) {
  IloEnv env;
  IloNumVarArray vars(env);
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
  vars.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));

  IloNumArray numbers(env);
  numbers.add(1.0);
  numbers.add(2.0);

  FirstFractional first_fractional;
  std::vector<IloConstraint*> actual_sub_problems = first_fractional.Branch(numbers, vars);
  ASSERT_TRUE(actual_sub_problems.size() == 0);
}
