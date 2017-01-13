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
  IloConstraintArray fixings_;

  IloAlgorithm::Status cplex_status_;
  bool solved_;
  bool fathomed_;
  double objective_value_;

 public:
  OptimizationProblem(IloCplex*, IloNumVarArray*);
  OptimizationProblem(IloCplex*, IloNumVarArray*, IloConstraint*);
  void AddFixings(const IloConstraintArray&);
  void Solve();
  const IloNumArray& GetSolution() const;
  const IloConstraintArray& GetFixings() const;

  bool IsSolved() const;
  bool IsInfeasible() const;
  bool IsUnbounded() const;
  bool IsFathomed() const;

  double GetObjectiveValue() const;
};

#endif //BNB_CORE_OPTIMIZATION_PROBLEM_H_

