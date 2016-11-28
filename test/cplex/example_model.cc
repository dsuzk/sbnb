
#include <iostream>
#include <ilcplex/ilocplex.h>
#include "example_model.h"

using namespace std;

ExampleModel::ExampleModel() {

  IloEnv environment_;
  this->environment = &environment_;

  IloModel model_(environment_);
  this->model = &model_;

  IloNumVarArray variables_(environment_);
  this->variables = &variables_;

  variables_.add(IloNumVar(environment_, 0.0, IloInfinity, ILOINT));
  variables_.add(IloNumVar(environment_, 0.0, IloInfinity, ILOINT));

  IloRangeArray constraints(environment_);

  model_.add(IloMaximize(environment_, 2 * variables_[0] + 3 * variables_[1]));

  constraints.add(4 * variables_[0] + 12 * variables_[1] <= 33);
  constraints.add(10 * variables_[0] + 4 * variables_[1] <= 35);

  constraints[0].setName("c1");
  constraints[1].setName("c2");

  model_.add(constraints);

  IloCplex cplex_(model_);
  this->cplex = &cplex_;

}





