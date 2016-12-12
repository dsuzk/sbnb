#include <string>
#include <iostream>
#include "core/optimization_problem_class.h"

OptimizationProblem::OptimizationProblem(IloCplex* cplex, IloNumVarArray* variables)
  : cplex_(cplex),
    variables_(variables),
    fixings_(cplex->getEnv()) {}

OptimizationProblem::OptimizationProblem(IloCplex* cplex, IloNumVarArray* variables, IloConstraint* constraint)
  : cplex_(cplex),
    variables_(variables),
    fixings_(cplex->getEnv()) {
  
  fixings_.add(*constraint);
}

void OptimizationProblem::AddFixings(const IloConstraintArray& fixings) {
  for (int i = 0; i < fixings.getSize(); ++i) {
    fixings_.add(fixings[i]);
  }
}

const IloConstraintArray& OptimizationProblem::GetFixings() const {
  return fixings_; 
}

void OptimizationProblem::Solve() {
  cplex_->getModel().add(fixings_);
  solved_ = cplex_->solve();
  cplex_status_ = cplex_->getStatus();
  solution_ = IloNumArray(cplex_->getEnv());

  if(solved_) {
    cplex_->getValues(solution_, *variables_);
    objective_value_ = cplex_->getObjValue();
  }

  cplex_->getModel().remove(fixings_);
}

const IloNumArray& OptimizationProblem::GetSolution() const {
  return solution_;
}

bool OptimizationProblem::IsSolved() const {
  return solved_;
}

bool OptimizationProblem::IsInfeasible() const {
  return (cplex_status_==IloAlgorithm::Infeasible);
}

bool OptimizationProblem::IsUnbounded() const {
  return (cplex_status_ ==IloAlgorithm::Unbounded || cplex_status_ == IloAlgorithm::InfeasibleOrUnbounded);
}

double OptimizationProblem::GetObjectiveValue() const {
  return objective_value_;
}

