
#ifndef BNB_INDEX_OF_SELECT_NODE_FUNCTION_H
#define BNB_INDEX_OF_SELECT_NODE_FUNCTION_H

#include <cmath>
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"


struct Sol{
public:
    Sol(int index, double frac);
    int variableIndex;
    double fractionalComp;
    bool operator()(Sol*,Sol*) const;
};

class FirstFractional : public Branching {
    using Branching::Branching;
protected:
    int IndexOfNextVariableToFix(const IloNumArray &numbers);

};

class CloseHalf : public Branching {
    using Branching::Branching;
protected:
    int IndexOfNextVariableToFix(const IloNumArray &numbers);

};

class CloseHalfExpensive : public Branching {

public:
    CloseHalfExpensive(IloNumVarArray vars, const std::vector <double> coef_, const double float_precision = 0.000001, const double delta_=0.1);


private:
    const std::vector<double> coef;
    const double delta;


protected:
    int IndexOfNextVariableToFix(const IloNumArray &numbers);
};


class StrongBranching : public Branching {

public:
    StrongBranching(IloNumVarArray vars, IloCplex*, int nBranchStart, double alpha, const double float_precision = 0.000001);
    void reduceNBranch(int level);


protected:
    IloCplex* cplex_;
    int IndexOfNextVariableToFix(const IloNumArray &numbers);

    int nBranch;
    int nBranchStart;
    double alpha;
};


#endif
