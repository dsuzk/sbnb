#include <string>
#include <iostream>
#include "core/optimization_problem_class.h"

OptimizationProblem::OptimizationProblem(IloCplex* cplex, IloNumVarArray* variables)
  : cplex_(cplex),
    variables_(variables),
    model_(cplex->getModel()) {}

OptimizationProblem::OptimizationProblem(IloCplex* cplex, IloNumVarArray* variables, IloConstraint* constraint)
  : cplex_(cplex),
    variables_(variables),
    model_(cplex->getModel()),
    fixings_(cplex->getEnv()) {
  
  fixings_.add(*constraint);
}

void OptimizationProblem::AddFixing(IloConstraint* constraint) {
  fixings_.add(*constraint);
}

const IloConstraintArray& OptimizationProblem::GetFixings() const {
  return fixings_; 
}

void OptimizationProblem::Solve() {
  model_.add(fixings_);
  solved_ = (bool)cplex_->solve();
  cplex_status_ = cplex_->getStatus();
  solution_ = IloNumArray(cplex_->getEnv());

  if(solved_)
    cplex_->getValues(solution_, *variables_);

  model_.remove(fixings_);
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

double OptimizationProblem::GetObjectiveValue()  {
  return cplex_->getObjValue();
}

