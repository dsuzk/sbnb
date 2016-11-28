#include "branch_and_bound_class.h"

BranchAndBound::BranchAndBound(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;
}
void BranchAndBound::optimize() {

}

