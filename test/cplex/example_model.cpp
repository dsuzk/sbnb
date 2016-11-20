#include <ilcplex/ilocplex.h>
#include <iostream>

using namespace std;
void createSampleModel(IloModel* model, IloNumVarArray* variables){

  IloEnv env = (*model).getEnv();
  IloRangeArray constraints(env);
  IloNumVarArray var = *variables;

  (*model).add(IloMaximize(env, 2*var[0]+3*var[1]));

  constraints.add(4*var[0]+12*var[1] <= 33);
  constraints.add(10*var[0]+4*var[1] <= 35);

  constraints[0].setName("c1");
  constraints[1].setName("c2");

  (*model).add(constraints);
}





