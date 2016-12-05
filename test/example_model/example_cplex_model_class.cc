
#include <iostream>
#include <ilcplex/ilocplex.h>
#include "example_model/example_cplex_model_class.h"

using namespace std;

ExampleCplexModel::ExampleCplexModel() {

  this->environment = new IloEnv();
  this->model = new IloModel(*environment); 
  this->variables = new IloNumVarArray(*environment);

  variables->add(IloNumVar(*environment, 0.0, 1.0, ILOFLOAT));
  variables->add(IloNumVar(*environment, 0.0, 2.0, ILOFLOAT));
  variables->add(IloNumVar(*environment, 0.0, 3.0, ILOFLOAT));
  variables->add(IloNumVar(*environment, 0.0, IloInfinity, ILOFLOAT));
  variables->add(IloNumVar(*environment, 0.0, IloInfinity, ILOFLOAT));

  IloRangeArray constraints(*environment);

  // fix to support '*' in maximize statement
  IloNumVarArray variables_ = *this->variables;
  model->add(IloMaximize(*environment, 2 * variables_[3] + 3 * variables_[4] + variables_[0] + variables_[1] + variables_[2]));

  constraints.add(4 * variables_[3] + 12 * variables_[4] <= 33);
  constraints.add(10 * variables_[3] + 4 * variables_[4] <= 35);
  constraints[0].setName("c1");
  constraints[1].setName("c2");

  model->add(constraints);
  this->cplex = new IloCplex(*model);
}

