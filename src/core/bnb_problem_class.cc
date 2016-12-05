#include "core/bnb_problem_class.h"

BnBProblem::BnBProblem(IloCplex* cplex, IloNumVarArray* variables) {
  cplex_ = cplex;
  variables_ = variables;

  model_ = cplex_->getModel();
}

BnBProblem::BnBProblem(IloCplex* cplex, IloNumVarArray* variables, IloConstraint* constraint) {
  cplex_ = cplex;
  variables_ = variables;
  constraint_ = constraint;

  model_ = cplex_->getModel();
}

void BnBProblem::AddFixing(IloConstraint* constraint) {
  model_.add(*constraint);
}

void BnBProblem::Solve() {
  cplex_->solve();
  solution_ = IloNumArray(cplex_->getEnv());
  cplex_->getValues(solution_, *variables_);
}

const IloNumArray& BnBProblem::GetSolution() const {
  return solution_;
}

