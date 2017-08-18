#ifndef __CPLEX_SOLVER_H_
#define __CPLEX_SOLVER_H_

#include <ilcplex/ilocplex.h>

class CplexSolver {

private:
    IloModel* model_;
    IloNumVarArray* variables_;
    IloNumArray best_solution_;

    void SetCplexParams();

public:
    CplexSolver(IloModel* model, IloNumVarArray* variables);

    void Solve();
    IloNumArray getSolution();

    double global_primal_bound_ = 0;
    IloNumArray solution_;
    IloCplex cplex_;
};

#endif // __CPLEX_SOLVER_H_
