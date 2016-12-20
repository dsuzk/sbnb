
#include <iostream>
#include <ilcplex/ilocplex.h>
#include "test_model_loader_class.h"

using namespace std;

TestModelLoader::TestModelLoader(char* path):
    environment(new IloEnv()),
    model(new IloModel(*environment)),
    variables(new IloNumVarArray(*environment)),
    cplex(new IloCplex(*model)),
    constraints(new IloRangeArray(*environment)),
    objective(new IloObjective()),
    expected_solution_values(new IloNumArray(*environment))
{
  cplex->importModel(*model, path, *objective, *variables, *constraints);
  cplex->setOut(environment->getNullStream());

  IloConversion relaxation(*environment, *variables, ILOINT);
  model->add(relaxation);
  cplex->solve();
  cplex->getValues(*expected_solution_values, *variables);
  expected_objective_value = cplex->getObjValue();
  relaxation.end();
}

