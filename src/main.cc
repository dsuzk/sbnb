#include <iostream>
#include <ctime>
#include <time.h>
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
    cplex.setOut(env.getNullStream());
    cplex.importModel(model, lp_file_path, objective, vars, constraints);
    BranchAndBound bnb(&model, &vars);

    const float begin = clock();
    bnb.optimize();
    const float duration = (clock() - begin)/CLOCKS_PER_SEC;

    std::cout << "------- Branch And Bound Summary -------" << endl;
    std::cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    std::cout << "Variable Values: " << bnb.GetBestSolution() << endl;
    std::cout << "Elapsed Time: " << duration << " sec" << endl;
  }
  catch (IloException& e){
    cerr << "Exception caught: " << e <<endl;
  }
  env.end();

  return 0;
}
