#ifndef BNB_CORE_BNBPROBLEM_H_
#define BNB_CORE_BNBPROBLEM_H_

#include <ilcplex/ilocplex.h>

/**
 * @brief The current Problem/Subproblem of a BnB Tree
 */
class BnBProblem {
 private:
  IloCplex* cplex_;
  IloNumVarArray* variables_;

  IloModel model_;
  IloNumArray solution_;
  IloConstraintArray fixings_;

 public:
  BnBProblem(IloCplex*, IloNumVarArray*);
  BnBProblem(IloCplex*, IloNumVarArray*, IloConstraint*);
  void AddFixing(IloConstraint*);
  void Solve();
  const IloNumArray& GetSolution() const;
  const IloConstraintArray& GetFixings() const;

  bool fathomed() const;
  bool unbounded() const;
  bool infeasible() const;
  bool solved() const;

  double dualBound() const;
  double primalBound() const;
};

#endif //BNB_CORE_BNBPROBLEM_H_

