
#include "IPModel_class.h"


IPModel::IPModel(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;
}

IPModel::IPModel(IloModel* model, IloNumVarArray* variables, IloConstraint* constraint) {
  model_ = model;
  variables_ = variables;
  constraint_ = constraint;
  AddFixing(constraint_);
}


void IPModel::AddFixing(IloConstraint* constraint) {
  model_->add(*constraint);
}

const IloNumArray& IPModel::GetSolution() const {
  IloCplex cplex(*model_);
  cplex.solve();
  cplex.getValues(solution_, *variables_);
  return solution_;
}


