#ifndef _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_
#define _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_

#include <ilcplex/ilocplex.h>

/**
 * @brief The main entry point for the branch and bound framework 
 */
class BranchAndBound
{
 private:
    IloModel& model_;
    IloNumVarArray& variables_;

    double global_dual_bound_;
    double global_primal_bound_;

    // Numerical Values Array as returned by eg. cplex.getValues
    // Solution of cplex.solve()
    const IloNumArray* best_solution_;

  public:
    BranchAndBound(IloModel*, IloNumVarArray*);

    double globalDualBound() const;
    double globalPrimalBound() const;
    
    const IloNumVarArray& getVariables() { return variables_; };
    const IloModel& getModel() { return model_; };

    // wait for BNB implementation
    // const BNBNode* currentNode() const;

    void optimize();
};


#endif // _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_
