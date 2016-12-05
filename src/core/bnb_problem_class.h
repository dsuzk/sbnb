#ifndef BNB_CORE_BNBPROBLEM_H_
#define BNB_CORE_BNBPROBLEM_H_

#include <ilcplex/ilocplex.h>

/**
 * @brief The current Problem/Subproblem of a BnB Tree
 */
class BnBProblem {
 private:
  IloModel* model_;
  IloNumVarArray* variables_;
  IloConstraint* constraint_;

  IloNumArray solution_;

 public:
  BnBProblem(IloModel*, IloNumVarArray*);
  BnBProblem(IloModel*, IloNumVarArray*, IloConstraint*);
  void AddFixing(IloConstraint*);
  void Solve();
  const IloNumArray& GetSolution() const;
  const IloConstraintArray& fixings() const;

  bool fathomed() const;
  bool unbounded() const;
  bool infeasible() const;
  bool solved() const;

  double dualBound() const;
  double primalBound() const;
};

#endif //BNB_CORE_BNBPROBLEM_H_

