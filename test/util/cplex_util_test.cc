#include <gtest/gtest.h>
#include <ilcplex/ilocplex.h>
#include <util/cplex_util.h>

using namespace std;

TEST(CplexUtil, ExtractSolutions_Test) {

  IloEnv env;
  IloModel model(env);
  IloNumVarArray variables(env);

  variables.add(IloNumVar(env, 0.0, IloInfinity, ILOINT));
  variables.add(IloNumVar(env, 0.0, IloInfinity, ILOINT));

  IloRangeArray constraints(env);

  model.add(IloMaximize(env, 2 * variables[0] + 3 * variables[1]));

  constraints.add(4 * variables[0] + 12 * variables[1] <= 33);
  constraints.add(10 * variables[0] + 4 * variables[1] <= 35);

  constraints[0].setName("c1");
  constraints[1].setName("c2");

  model.add(constraints);

  IloCplex cplex(model);

  try {
    cplex.solve();
  } catch (IloException &exception) {
    cerr << exception << endl;
  }

  IloNum expectedValues[] = {2, 2};
  const IloNum *values = ExtractSolutions(cplex, variables);

  for (int i = 0; i < variables.getSize(); ++i) {
    EXPECT_EQ(values[i], expectedValues[i]);
  }

  env.end();

}

TEST(CplexUtil, ExtractSolutions_InsertUnsolvedModelTest) {

  IloEnv env;
  IloModel model(env);
  IloNumVarArray variables(env);
  IloCplex cplex(model);

  EXPECT_THROW(ExtractSolutions(cplex, variables), std::invalid_argument);

  env.end();

}
