#include "core/bnb_problem_class.h"
#include <string>
#include <iostream>

using namespace std;

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
  solved_ = (bool)cplex_->solve();
  cplex_status_ = cplex_->getStatus();
  solution_ = IloNumArray(cplex_->getEnv());

  if(solved_){
    cplex_->getValues(solution_, *variables_);
  }

}

const IloNumArray& BnBProblem::GetSolution() const {
  return solution_;
}

bool BnBProblem::IsSolved() const {
  return solved_;
}

bool BnBProblem::IsInfeasible() const {
  return (cplex_status_==IloAlgorithm::Infeasible);
}

bool BnBProblem::IsUnbounded() const {
  return (cplex_status_ ==IloAlgorithm::Unbounded || cplex_status_ == IloAlgorithm::InfeasibleOrUnbounded);
}

double BnBProblem::GetObjectiveValue()  {
  objective_value_ = cplex_->getObjValue();
}



