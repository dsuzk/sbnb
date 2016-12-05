#include "core/bnb_problem_class.h"

BnBProblem::BnBProblem(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;
}

BnBProblem::BnBProblem(IloModel* model, IloNumVarArray* variables, IloConstraint* constraint) {
  model_ = model;
  variables_ = variables;
  constraint_ = constraint;
}

void BnBProblem::AddFixing(IloConstraint* constraint) {
  model_->add(*constraint);
}

void BnBProblem::Solve() {
  IloCplex cplex(*model_);
  cplex.solve();
  this -> solution_ = IloNumArray(this->model_->getEnv());
  cplex.getValues(solution_, *variables_);
}

const IloNumArray& BnBProblem::GetSolution() const {
  return this->solution_;
}

