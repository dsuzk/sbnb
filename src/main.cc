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

  try {
    cplex.importModel(model, lp_file_path, objective, vars, constraints);
    BranchAndBound bnb(&model, &vars);
    bnb.optimize();

    std::cout << " ------- Branch And Bound Summary ------- " << endl;
    std::cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    std::cout << "Variable Values: " << bnb.GetBestSolution() << endl;
  }
  catch (IloException& e){
    cerr << "Exception caught: " << e <<endl;
  }
  env.end();

  return 0;
}
