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

  IloAlgorithm::Status cplex_status_;
  bool solved_;

  double objective_value_;

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

  double GetObjectiveValue();

};

#endif //BNB_CORE_BNBPROBLEM_H_

