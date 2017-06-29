
#ifndef BNB_BRANCHING_BRANCHING_H
#define BNB_BRANCHING_BRANCHING_H

#include <ilcplex/ilocplex.h>
#include <vector>



class Branching {

public:
    // default floating precision from IloCplex::EpRHS
    Branching(IloNumVarArray vars, const double float_precision = 0.000001);

    std::vector<IloConstraint*> Branch(IloNumArray &solutions);

    virtual ~Branching(){};
protected:
    const int NO_FIXING_VALUE_FOUND = -1;
    const double kFloatPrecision;
    IloNumVarArray vars_;

    void generateConstraints(IloNumArray solutions, int index_of_variable_to_be_branched, std::vector<IloConstraint*>*);
    virtual int IndexOfNextVariableToFix(const IloNumArray &numbers) = 0;
    double IsFractional(const double number);


};

#endif //BNB_BRANCHING_BRANCHING_H
