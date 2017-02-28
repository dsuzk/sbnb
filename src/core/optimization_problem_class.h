#ifndef BNB_CORE_OPTIMIZATION_PROBLEM_H_
#define BNB_CORE_OPTIMIZATION_PROBLEM_H_

#include <ilcplex/ilocplex.h>

/**
 * @brief The current Optimization (sub-)Problem of a BnB Tree
 */
class OptimizationProblem {
 private:
  IloCplex* cplex_;
  IloNumVarArray* variables_;
  IloNumArray solution_;
  IloConstraint* fixing_ = NULL;

  IloAlgorithm::Status cplex_status_;
  bool solved_ = false;
  bool has_fixing_installed = false;
  double objective_value_;

  bool console_output_;

 public:
  OptimizationProblem(IloCplex*, IloNumVarArray*, bool console_output = false);
  OptimizationProblem(IloCplex*, IloNumVarArray*, IloConstraint*, bool console_output = false);
  void InstallFixing();
  void RemoveFixing();
  void FreeFixing();
  void Solve();
  const IloNumArray& GetSolution() const;
  const IloConstraint& GetFixing() const;

  bool IsSolved() const;
  bool IsInfeasible() const;
  bool IsUnbounded() const;
  bool HasFixingInstalled() const;

  double GetObjectiveValue() const;
};

#endif //BNB_CORE_OPTIMIZATION_PROBLEM_H_

