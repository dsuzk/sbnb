#include "core/bnb_problem_class.h"
#include <string>

BnBProblem::BnBProblem(IloCplex* cplex, IloNumVarArray* variables) {
  cplex_ = cplex;
  variables_ = variables;

  model_ = cplex_->getModel();
}

BnBProblem::BnBProblem(IloCplex* cplex, IloNumVarArray* variables, IloConstraint* constraint) {
  cplex_ = cplex;
  variables_ = variables;

  model_ = cplex_->getModel();
  fixings_ = IloConstraintArray(cplex_->getEnv());
  fixings_.add(*constraint);
}

void BnBProblem::AddFixing(IloConstraint* constraint) {
  fixings_.add(*constraint);
}

const IloConstraintArray& BnBProblem::GetFixings() const {
  return fixings_; 
}

void BnBProblem::Solve() {
  cplex_->solve();
  solution_ = IloNumArray(cplex_->getEnv());
  cplex_->getValues(solution_, *variables_);
}

const IloNumArray& BnBProblem::GetSolution() const {
  return solution_;
}

bool BnBProblem::solved() const {
  IloCplex cplex(*model_);
  return (cplex.getStatus() == IloAlgorithm::Feasible);

}




