
#include <ilcplex/ilocplex.h>
#include <stdexcept>
#include "cplex_util.h"

const double *ExtractSolutions(IloCplex &cplex, IloNumVarArray &variables) {

  if (cplex.getStatus() == IloAlgorithm::Status::Unknown) {
    throw std::invalid_argument( "received unsolved problem" );
  }

  IloNum *solutions = (IloNum*) malloc(sizeof(IloNum) * variables.getSize());

  for (int i = 0; i < variables.getSize(); i++) {
    IloNumVar numVar = variables[i];
    double solution = cplex.getValue(numVar);
    solutions[i] = solution;
  }

  return solutions;

}