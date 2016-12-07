
#include <ilcplex/ilocplex.h>
#include "gtest/gtest.h"
#include <core/branch_and_bound_class.h>

using namespace std;

TEST(BranchAndBoundClass, OptimizationTest) {

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

  BranchAndBound branchAndBound(&model, &variables);

  try {

    branchAndBound.optimize();

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }

  IloNumArray solution_values = branchAndBound.best_solution();

  IloNum expected_solutions[2] = {2, 2};

  ASSERT_EQ(2, solution_values.getSize());

  for (int i = 0; i < solution_values.getSize(); ++i) {
    IloNum actual_solution = solution_values[i];
    IloNum expected_solution = expected_solutions[i];
    ASSERT_EQ(actual_solution, expected_solution);
  }


}
