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
  IloConstraint* fixing_;

  IloAlgorithm::Status cplex_status_;
  bool solved_ = false;
  bool fathomed_ = true;
  bool has_fixing_installed = false;
  double objective_value_;

 public:
  OptimizationProblem(IloCplex*, IloNumVarArray*);
  OptimizationProblem(IloCplex*, IloNumVarArray*, IloConstraint*);
  void InstallFixing();
  void RemoveFixing(const IloConstraint&);
  void Solve();
  void Fathom();
  const IloNumArray& GetSolution() const;
  const IloConstraint& GetFixing() const;

  bool IsSolved() const;
  bool IsInfeasible() const;
  bool IsUnbounded() const;
  bool IsFathomed() const;
  bool HasFixingInstalled() const;

  double GetObjectiveValue() const;
};

#endif //BNB_CORE_OPTIMIZATION_PROBLEM_H_

