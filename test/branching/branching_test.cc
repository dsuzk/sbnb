
#include <gtest/gtest.h>
#include <ilcplex/ilocplex.h>
#include <branching/branching.h>
#include "example_model/example_cplex_model_class.h"

TEST(Branching, branch_Test) {

  ExampleCplexModel example_model;
  // ACTUAL TEST ---------------------------------------------------

  OptimizationProblem root_problem(example_model.cplex, example_model.variables);
  root_problem.Solve();
  IloNumArray solution = root_problem.GetSolution();

  Branching branching(BranchingRule::FIRST_FRACTIONAL);
  const vector<IloConstraint *> sub_problems = *branching.Branch(solution, *example_model.variables);

  double expected_solution_of_branch1[2] = {3.0, 1.25};
  double expected_solution_of_branch2[2] = {2.0, 2.0833333333333335};

  double *expected_solution[2] = {expected_solution_of_branch1, expected_solution_of_branch2};

  for (int i = 0; i < sub_problems.size(); ++i) {

    IloConstraint constraint = *sub_problems[i];
    OptimizationProblem *sub_problem = new OptimizationProblem(example_model.cplex, example_model.variables, &constraint);
    IloConstraintArray fixings = sub_problem->GetFixings();
    sub_problem->Solve();
    solution = sub_problem->GetSolution();

    for (int j = 0; j < solution.getSize(); ++j) {
      double actual_solution = solution[j];
      ASSERT_DOUBLE_EQ(actual_solution, expected_solution[i][j]);
    }
  }

  example_model.environment->end();
}
