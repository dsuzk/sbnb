
#ifndef BNB_BRANCHING_BRANCHING_H
#define BNB_BRANCHING_BRANCHING_H

#include <ilcplex/ilocplex.h>
#include <vector>
#include <core/optimization_problem_class.h>
#include "first_fractional.h"

using namespace std;

enum BranchingRule {
    FIRST_FRACTIONAL
};

class Branching {

public:
    Branching(BranchingRule rule);

    vector<OptimizationProblem*> *Branch(IloCplex &cplex, IloNumArray &solutions, IloNumVarArray &variables);

private:
    int (*IndexOfNextVariableToFix)(const IloNumArray &numbers);

};

#endif //BNB_BRANCHING_BRANCHING_H
