#include "core/bnb_problem_class.h"


BnBProblem::BnBProblem(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;
}

BnBProblem::BnBProblem(IloModel* model, IloNumVarArray* variables, IloConstraint* constraint) {
  model_ = model;
  variables_ = variables;
  constraint_ = constraint;
  AddFixing(constraint_);
}


void BnBProblem::AddFixing(IloConstraint* constraint) {
  model_->add(*constraint);
}

const IloNumArray& BnBProblem::GetSolution() const {
  IloCplex cplex(*model_);
  cplex.solve();
  cplex.getValues(*solution_, *variables_);
  return *solution_;
}

