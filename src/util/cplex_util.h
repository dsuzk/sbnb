
#ifndef BNB_UTIL_CPLEX_UTIL_H_
#define BNB_UTIL_CPLEX_UTIL_H_

#include <ilcplex/ilocplex.h>

const double *ExtractSolutions(IloCplex &cplex, IloNumVarArray &variables);

#endif //BNB_UTIL_CPLEX_UTIL_H_
