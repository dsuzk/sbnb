#ifndef BNB_IPMODEL_H_
#define BNB_IPMODEL_H_

#include <ilcplex/ilocplex.h>


class IPModel {

private:
  IloModel* model_;
  IloNumVarArray* variables_;
  IloConstraint* constraint_;
  IloNumArray solution_;

public:
  IPModel(IloModel*, IloNumVarArray*);
  IPModel(IloModel*, IloNumVarArray*, IloConstraint*);
  void AddFixing(IloConstraint*);
  const IloNumArray& GetSolution() const;
  const IloConstraintArray& fixings() const;

  bool fathomed() const;
  bool unbounded() const;
  bool infeasible() const;
  bool solved() const;

  double dualBound() const;
  double primalBound() const;
};


#endif //BNB_IPMODEL_H_
