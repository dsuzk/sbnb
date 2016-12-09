
#include <gtest/gtest.h>
#include <ilcplex/ilocplex.h>
#include <branching/branching.h>

TEST(Branching, branch_Test) {

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

  // ACTUAL TEST ---------------------------------------------------

  OptimizationProblem root_problem(&cplex, &variables);
  root_problem.Solve();
  IloNumArray solution = root_problem.GetSolution();

  Branching branching(BranchingRule::FIRST_FRACTIONAL);
  const vector<OptimizationProblem *> sub_problems = *branching.Branch(cplex, solution, variables);

  double expected_solution_of_branch1[2] = {3.0, 1.25};
  double expected_solution_of_branch2[2] = {2.0, 2.0833333333333335};

  double *expected_solution[2] = {expected_solution_of_branch1, expected_solution_of_branch2};

  for (int i = 0; i < sub_problems.size(); ++i) {
    OptimizationProblem sub_problem = *sub_problems[i];

    IloConstraintArray fixings = sub_problem.GetFixings();

    sub_problem.Solve();
    solution = sub_problem.GetSolution();

    for (int j = 0; j < solution.getSize(); ++j) {
      double actual_solution = solution[j];
      ASSERT_DOUBLE_EQ(actual_solution, expected_solution[i][j]);
    }
  }

  environment.end();
}
