
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
    objective(new IloObjective())
{
  cplex->importModel(*model, path, *objective, *variables, *constraints);
  cplex->setOut(environment->getNullStream());
}

