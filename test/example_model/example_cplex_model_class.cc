
#include <iostream>
#include <ilcplex/ilocplex.h>
#include "example_model/example_cplex_model_class.h"

using namespace std;

ExampleCplexModel::ExampleCplexModel() {

  this->environment = new IloEnv();
  this->model = new IloModel(*environment); 
  this->variables = new IloNumVarArray(*environment);

  variables->add(IloNumVar(*environment, 0.0, IloInfinity, ILOFLOAT));
  variables->add(IloNumVar(*environment, 0.0, IloInfinity, ILOFLOAT));

  IloRangeArray constraints(*environment);

  // fix to support '*' in maximize statement
  IloNumVarArray variables_ = *this->variables;
  model->add(IloMaximize(*environment, 2 * variables_[0] + 3 * variables_[1]));

  constraints.add(4 * variables_[0] + 12 * variables_[1] <= 33);
  constraints.add(10 * variables_[0] + 4 * variables_[1] <= 35);
  constraints[0].setName("c1");
  constraints[1].setName("c2");

  model->add(constraints);
  this->cplex = new IloCplex(*model);
  cplex->setOut(environment->getNullStream());
}

