#include <gtest/gtest.h>
#include <ilcplex/ilocplex.h>
#include "example_model.h"

using namespace std;

TEST(Cplex, model_test){

  ExampleModel example;

  IloEnv environment = *example.environment;
  IloNumVarArray variables = *example.variables;
  IloCplex cplex = *example.cplex;

  try{
    cplex.solve();
  } catch(IloException& exception){
    cerr << exception << endl;
  }

  EXPECT_EQ(2, cplex.getValue(variables[0]));
  EXPECT_EQ(2, cplex.getValue(variables[1]));

  environment.end();
}


