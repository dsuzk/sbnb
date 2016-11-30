
#ifndef BNB_TEST_TEST_UTIL_CPLEX_PROBLEM_CLASS_H_
#define BNB_TEST_TEST_UTIL_CPLEX_PROBLEM_CLASS_H_

#include <ilcplex/ilocplex.h>

class TestCplexProblem {
public:
    TestCplexProblem();

    IloEnv *environment;
    IloModel *model;
    IloNumVarArray *variables;
    IloCplex *cplex;

};

#endif //BNB_TEST_TEST_UTIL_CPLEX_PROBLEM_CLASS_H_
