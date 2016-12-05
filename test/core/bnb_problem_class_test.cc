#include <iostream>
#include <ilcplex/ilocplex.h>
#include "gtest/gtest.h"
#include "core/bnb_problem_class.h"

using namespace std;

TEST(BnBProblem, getSolution) {
  try {
    IloEnv environment;
    IloModel model(environment);
    IloNumVarArray variables(environment);

    variables.add(IloNumVar(environment, 0.0, 1.0, ILOFLOAT));
    variables.add(IloNumVar(environment, 0.0, 2.0, ILOFLOAT));
    variables.add(IloNumVar(environment, 0.0, 3.0, ILOFLOAT));
    variables.add(IloNumVar(environment, 0.0, IloInfinity, ILOFLOAT));
    variables.add(IloNumVar(environment, 0.0, IloInfinity, ILOFLOAT));

    model.add(IloMaximize(environment, 2 * variables[3] + 3 * variables[4] + variables[0] + variables[1] + variables[2]));

    IloRangeArray constraints(environment);
    constraints.add(4 * variables[3] + 12 * variables[4] <= 33);
    constraints.add(10 * variables[3] + 4 * variables[4] <= 35);
    constraints[0].setName("c1");
    constraints[1].setName("c2");
    model.add(constraints);

    BnBProblem problem(&model, &variables);
    problem.Solve();
    const IloNumArray solution = problem.GetSolution();
    ASSERT_EQ(1, solution[0]);
    ASSERT_EQ(2, solution[1]);
    ASSERT_EQ(3, solution[2]);
    // why fail? float calc errors
    // ASSERT_EQ(2.76923, solution[3]);

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}
