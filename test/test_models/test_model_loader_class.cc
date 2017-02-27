#include <iostream>
#include <ilcplex/ilocplex.h>
#include "test_model_loader_class.h"

TestModelLoader::TestModelLoader(const char* path):
    environment(new IloEnv()),
    model(new IloModel(*environment)),
    variables(new IloNumVarArray(*environment)),
    cplex(new IloCplex(*model)),
    constraints(new IloRangeArray(*environment)),
    objective(new IloObjective()),
    expected_solution_values(new IloNumArray(*environment))
{
  
  cplex->setOut(environment->getNullStream());
  cplex->importModel(*model, path, *objective, *variables, *constraints);

  IloConversion relaxation(*environment, *variables, ILOINT);

  if (IsMaximizationProblem()) {
    expected_objective_value = -IloInfinity;
  } else {
    expected_objective_value = IloInfinity;
  }

  model->add(relaxation);
  if (cplex->solve()) {
    cplex->getValues(*expected_solution_values, *variables);
    expected_objective_value = cplex->getObjValue();
  }
  relaxation.end();

}

const bool TestModelLoader::IsMaximizationProblem() const {
  return cplex->getObjective().getSense() == IloObjective::Sense::Maximize;
}
