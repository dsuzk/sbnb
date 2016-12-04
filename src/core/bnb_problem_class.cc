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

const IloNumArray& BnBProblem::GetSolution() const {
  IloCplex cplex(*model_);
  cplex.solve();

  // if not 'new'Segmentation Error cause pointer does not point so anything anymore
  // TODO figure out a way to return pointer to member/ or delete 'new' pointer
  IloNumArray* solution = new IloNumArray(this->model_->getEnv());
  cplex.getValues(*solution, *variables_);
  return *solution;
}

