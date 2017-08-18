#include "cplex_solver.h"

CplexSolver::CplexSolver(IloModel* model, IloNumVarArray* variables) :
model_(model),
variables_(variables),
best_solution_(IloNumArray(model_->getEnv())),
cplex_(IloCplex(*model)) {

    cplex_.setOut(model_->getEnv().getNullStream());

    IloConversion relaxation(model_->getEnv(), *variables_, ILOINT);
    model_->add(relaxation);
    SetCplexParams();
}

void CplexSolver::Solve() {
    if (cplex_.solve()) {
	cplex_.getValues(best_solution_, *variables_);
	global_primal_bound_ = cplex_.getObjValue();
	solution_ = IloNumArray(cplex_.getEnv());
	cplex_.getValues(solution_, *variables_);
    }
}

IloNumArray CplexSolver::getSolution(){
    return solution_;
}

void CplexSolver::SetCplexParams() {
    cplex_.setParam(IloCplex::Symmetry, 0);    // no symmetry breaking
    cplex_.setParam(IloCplex::PreInd, false);  // no presolve
    cplex_.setParam(IloCplex::Threads, 1);     // only one thread
    cplex_.setParam(IloCplex::TiLim, 3600);
    cplex_.setParam(IloCplex::Param::WorkMem, 4096);
    cplex_.setParam(IloCplex::Param::MIP::Strategy::File, 0); // no swapping

    // disable all MIP cuts
    cplex_.setParam(IloCplex::Cliques, -1);
    cplex_.setParam(IloCplex::Covers, -1);
    cplex_.setParam(IloCplex::DisjCuts, -1);
    cplex_.setParam(IloCplex::FlowCovers, -1);
    cplex_.setParam(IloCplex::FlowPaths, -1);
    cplex_.setParam(IloCplex::FracCuts, -1);
    cplex_.setParam(IloCplex::GUBCovers, -1);
    cplex_.setParam(IloCplex::ImplBd, -1);
    cplex_.setParam(IloCplex::MIRCuts, -1);
    cplex_.setParam(IloCplex::ZeroHalfCuts, -1);
    cplex_.setParam(IloCplex::Param::MIP::Cuts::Implied, -1);
    cplex_.setParam(IloCplex::Param::MIP::Cuts::LiftProj, -1);
    cplex_.setParam(IloCplex::Param::MIP::Cuts::MCFCut, -1);
    cplex_.setParam(IloCplex::Param::MIP::Cuts::MIRCut, -1);

    // close-half variable selection rule
    cplex_.setParam(IloCplex::Param::MIP::Strategy::VariableSelect, 1);
}
