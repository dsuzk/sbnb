#ifndef BNB_CORE_OPTIMIZATION_PROBLEM_H_
#define BNB_CORE_OPTIMIZATION_PROBLEM_H_

#include <ilcplex/ilocplex.h>

/**
 * @brief The current OptimizationProblem/SubOptimizationproblem of a BnB Tree
 */
class OptimizationProblem {
 private:
  IloCplex* cplex_;
  IloNumVarArray* variables_;

  IloModel model_;
  IloNumArray solution_;
  IloConstraintArray fixings_;

  IloAlgorithm::Status cplex_status_;
  bool solved_;

 public:
  OptimizationProblem(IloCplex*, IloNumVarArray*);
  OptimizationProblem(IloCplex*, IloNumVarArray*, IloConstraint*);
  void AddFixing(IloConstraint*);
  void Solve();
  const IloNumArray& GetSolution() const;
  const IloConstraintArray& GetFixings() const;

  bool IsSolved() const;
  bool IsInfeasible() const;
  bool IsUnbounded() const;

  double GetObjectiveValue();

};

#endif //BNB_CORE_OPTIMIZATION_PROBLEM_H_

