
#include <ilcplex/ilocplex.h>

class ExampleModel {
public:
    ExampleModel();

    IloEnv *environment;
    IloModel *model;
    IloNumVarArray *variables;
    IloCplex *cplex;

};
