
#include <iostream>
#include <ilcplex/ilocplex.h>
#include "test_cplex_problem_class.h"

using namespace std;

TestCplexProblem::TestCplexProblem() {

  IloEnv environment_;
  this->environment = &environment_;

  IloModel model_(environment_);
  this->model = &model_;

  IloNumVarArray variables_(environment_);
  this->variables = &variables_;

  variables_.add(IloNumVar(environment_, 0.0, 1.0, ILOFLOAT));
  variables_.add(IloNumVar(environment_, 0.0, 2.0, ILOFLOAT));
  variables_.add(IloNumVar(environment_, 0.0, 3.0, ILOFLOAT));
  variables_.add(IloNumVar(environment_, 0.0, IloInfinity, ILOFLOAT));
  variables_.add(IloNumVar(environment_, 0.0, IloInfinity, ILOFLOAT));

  IloRangeArray constraints(environment_);

  model_.add(IloMaximize(environment_, 2 * variables_[3] + 3 * variables_[4] + variables_[0] + variables_[1] + variables_[2]));

  constraints.add(4 * variables_[3] + 12 * variables_[4] <= 33);
  constraints.add(10 * variables_[3] + 4 * variables_[4] <= 35);

  constraints[0].setName("c1");
  constraints[1].setName("c2");

  model_.add(constraints);

  IloCplex cplex_(model_);
  this->cplex = &cplex_;

}





