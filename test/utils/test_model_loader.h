#ifndef BNB_TEST_TEST_MODAL_LOADER_H_
#define BNB_TEST_TEST_MODAL_LOADER_H_

#include <ilcplex/ilocplex.h>

class TestModelLoader {
 private:
  const bool IsMaximizationProblem() const;

  public:
  TestModelLoader(const char *path);

  IloEnv *environment;
  IloModel *model;
  IloNumVarArray *variables;
  IloCplex *cplex;
  IloRangeArray *constraints;
  IloObjective *objective;

  IloNumArray *expected_solution_values;
  double expected_objective_value;

};

#endif //BNB_TEST_TEST_MODAL_LOADER_H_
