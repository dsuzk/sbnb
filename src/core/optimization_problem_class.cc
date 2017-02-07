
#include "optimization_problem_class.h"

OptimizationProblem::OptimizationProblem(IloCplex *cplex, IloNumVarArray *variables)
    : cplex_(cplex),
      variables_(variables),
      has_fixing_installed(true){}

OptimizationProblem::OptimizationProblem(IloCplex *cplex, IloNumVarArray *variables, IloConstraint *constraint)
    : cplex_(cplex),
      variables_(variables),
      fixing_(constraint){}


const IloConstraint& OptimizationProblem::GetFixing() const {
  return *fixing_;
}

void OptimizationProblem::Solve() {
  solved_ = cplex_->solve();
  cplex_status_ = cplex_->getStatus();
  solution_ = IloNumArray(cplex_->getEnv());

  if (solved_) {
    cplex_->getValues(solution_, *variables_);
    objective_value_ = cplex_->getObjValue();
  }
}

void OptimizationProblem::InstallFixing() {
  cplex_->getModel().add(*fixing_);
  has_fixing_installed = true;
}

void OptimizationProblem::RemoveFixing() {
  if (has_fixing_installed) {
    cplex_->getModel().remove(*fixing_);
    has_fixing_installed = false;
  }
}

void OptimizationProblem::Fathom() {
  if (fixing_) {
    fixing_->end();
    delete fixing_;
  }
  has_fixing_installed = false;
  fathomed_ = true;
}

bool OptimizationProblem::IsFathomed() const {
  return fathomed_;
}

bool OptimizationProblem::IsSolved() const {
  return solved_;
}

bool OptimizationProblem::IsInfeasible() const {
  return (cplex_status_ == IloAlgorithm::Infeasible);
}

bool OptimizationProblem::IsUnbounded() const {
  return (cplex_status_ == IloAlgorithm::Unbounded || cplex_status_ == IloAlgorithm::InfeasibleOrUnbounded);
}

double OptimizationProblem::GetObjectiveValue() const {
  return objective_value_;
}

const IloNumArray &OptimizationProblem::GetSolution() const {
  return solution_;
}

bool OptimizationProblem::HasFixingInstalled() const {
  return has_fixing_installed;
}

