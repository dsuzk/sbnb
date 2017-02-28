
#include "optimization_problem_class.h"

OptimizationProblem::OptimizationProblem(IloCplex *cplex, IloNumVarArray *variables, bool console_output)
    : cplex_(cplex),
      variables_(variables),
      has_fixing_installed(true),
      console_output_(console_output) {}

OptimizationProblem::OptimizationProblem(IloCplex *cplex, IloNumVarArray *variables, IloConstraint *constraint, bool console_output)
    : cplex_(cplex),
      variables_(variables),
      fixing_(constraint),
      console_output_(console_output) {}


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
  if (console_output_)
    std::cout << "\tInstalling fixing: " << *fixing_ << std::endl;
  cplex_->getModel().add(*fixing_);
  has_fixing_installed = true;
}

void OptimizationProblem::RemoveFixing() {
  if (has_fixing_installed) {
    if (console_output_)
      std::cout << "\tRemoving fixing: " << *fixing_ << std::endl;
    cplex_->getModel().remove(*fixing_);
    has_fixing_installed = false;
  }
}

void OptimizationProblem::FreeFixing() {
  if (fixing_) {
    if (console_output_)
      std::cout << "\tFreeing fixing: " << *fixing_ << std::endl;
    fixing_->end();
    delete fixing_;
  }
  has_fixing_installed = false;
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

