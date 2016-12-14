
#ifndef BNB_TEST_TEST_MODAL_LOADER_CLASS_H_
#define BNB_TEST_TEST_MODAL_LOADER_CLASS_H_

#include <ilcplex/ilocplex.h>

class TestModelLoader {
 public:
  TestModelLoader(char *path);

  IloEnv *environment;
  IloModel *model;
  IloNumVarArray *variables;
  IloCplex *cplex;
  IloRangeArray *constraints;
  IloObjective *objective;

};

#endif //BNB_TEST_TEST_MODAL_LOADER_CLASS_H_
