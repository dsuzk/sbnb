#include "branch_and_bound_class.h"
#include "IPModel/IPModel_class.h"

BranchAndBound::BranchAndBound(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;
}
void BranchAndBound::optimize() {
  // IPModel ip_model(model_, variables_);
  // Node<IPModel*> root(&ip_model);
}

