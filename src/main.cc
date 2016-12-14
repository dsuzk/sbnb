#include <iostream>
#include <core/branch_and_bound_class.h>

int main(int argn, char* argv[]) {
  const char* lp_file_path = argv[1];
  IloEnv env;
  IloModel model(env);
  IloNumVarArray vars(env);
  IloCplex cplex(model);
  IloRangeArray constraints(env);
  IloObjective objective;
  BranchAndBound bnb(&model, &vars);

  try {
    cplex.importModel(model, lp_file_path, objective, vars, constraints);
    bnb.optimize();
  }
  catch (IloException& e){
    cerr << "Exception caught: " << e <<endl;
  }
  std::cout << " ------- Branch And Bound Summary ------- " << endl;
  std::cout << "Objective Value: " << bnb.GetGlobalDualBound() << endl;
  std::cout << "Variable Values: " << bnb.GetBestSolution() << endl;

  env.end();

  return 0;
}