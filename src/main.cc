#include <iostream>
#include <ctime>
#include <string>
#include "core/branch_and_bound_class.h"
#include "node_selection/breadth_first_traversal_class.h"
#include "statistics/cplex_solver_class.h"

void SolveLP(int traversal_flag, int selection_flag, bool verbose_flag, char* file_path);
void ShowUsage();
void CompareWithCplex(char* file_path);

int main(int argc, char* argv[]) {
  int selection_flag = 0; // Depth First Traversal = 0, Breadth First Traversal = 1
  int branching_flag = 0; // First Fractional = 0
  bool verbose_flag = false;
  bool compare_flag = false;
  char *file_path = NULL;
  int option_character;
  opterr = 0;

  while ((option_character = getopt (argc, argv, "dbfvch")) != -1)
    switch (option_character) {
    case 'd':
      selection_flag = 0;
      break;
    case 'b':
      selection_flag = 1;
      break;
    case 'f':
      branching_flag = 0;
      break;
    case 'v':
      verbose_flag = true;
      break;
    case 'c':
      compare_flag = true;
      break;
    case 'h':
      ShowUsage();
      return 0;
    case '?':
      if (isprint (optopt))
        fprintf (stderr, "Unknown option `-%c'. See \"sbnb -h\" for help.\n", optopt);
      else
        fprintf (stderr, "Unknown option character `\\x%x'. See \"sbnb -h\" for help.\n", optopt);
      return 1;
    default:
      abort();
    }

  if (optind < argc) {
    file_path = argv[optind];
    SolveLP(selection_flag, branching_flag, verbose_flag, file_path);
  } else {
    std:cerr << "No file path specified. See \"sbnb -h for help.\"" << std::endl;
    return 1;
  }

  if (compare_flag)
    CompareWithCplex(file_path);

  return 0;
}

void ShowUsage() {
  std::cout << "USAGE: sbnb [-d|-b] [-f] [-v] [-c] file_path" << std::endl;
  std::cout << "\t -d: Set node selection to 'Depth first traversal' (default)" << std::endl;
  std::cout << "\t -b: Set node selection to 'Breadth first traversal'" << std::endl;
  std::cout << "\t -f: Set branching rule to 'First fractional' (default)" << std::endl;
  std::cout << "\t -v: Enable verbose output" << std::endl;
  std::cout << "\t -c: Compare with Cplex Solver" << std::endl;
  std::cout << "\t file_path: Location of linear problem file (.lp/.mps file formats). REQUIRED " << std::endl;
  std::cout << "EXAMPLES:" << std::endl << "\t sbnb -bc test/testmodels/sample3.mps" << std::endl;
  std::cout << "\t sbnb -v test/testmodels/sample10.mps" << std::endl;
}

void SolveLP(int selection_flag, int branching_flag, bool verbose_flag, char* file_path) {
  IloEnv env;
  IloModel model(env);
  IloNumVarArray vars(env);
  IloCplex cplex(model);
  IloRangeArray constraints(env);
  IloObjective objective;

  NodeSelection* node_selection;
  Branching* branching_rule;

  switch (selection_flag) {
  case 0:
    node_selection = new DepthFirstTraversal();
    break;
  case 1:
    node_selection = new BreadthFirstTraversal();
    break;
  default:
    node_selection = new DepthFirstTraversal();
  }

  switch (branching_flag) {
  case 0:
    branching_rule = new FirstFractional(cplex.getParam(IloCplex::EpRHS));
    break;
  default:
    branching_rule = new FirstFractional(cplex.getParam(IloCplex::EpRHS));
  }

  try {
    cplex.setOut(env.getNullStream());
    cplex.importModel(model, file_path, objective, vars, constraints);
    BranchAndBound bnb(&model, &vars, branching_rule, node_selection, verbose_flag);

    bnb.optimize();

    std::cout << endl << "------- Branch And Bound Summary -------" << endl;
    std::cout << "Variable Values: " << bnb.GetBestSolution() << endl;
    std::cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    std::cout << "Max Node Level: " << bnb.GetStatistics().maxLevel << endl;
    std::cout << "Computed Nodes: " << bnb.GetStatistics().nNodes << endl;
    std::cout << "Elapsed Time: " << bnb.GetStatistics().runtime << " sec" << endl;
    std::cout << "Time per Node: " << (bnb.GetStatistics().runtime / bnb.GetStatistics().nNodes) * 1000 << " ms/node" << endl << endl;
  } catch (IloException& e) {
    cerr << "Error: " << e << endl;
  }
  env.end();
}

void CompareWithCplex(char* file_path) {
  IloEnv env;
  IloModel model(env);
  IloNumVarArray vars(env);
  IloCplex cplex(model);
  IloRangeArray constraints(env);
  IloObjective objective;

  try {
    cplex.setOut(env.getNullStream());
    cplex.importModel(model, file_path, objective, vars, constraints);
    CplexSolver cplex_solver(&model, &vars);
    cplex_solver.Solve();

    std::cout << "------- Cplex Statistics -------" << endl;
    std::cout << "Objective Value: " << cplex_solver.global_primal_bound_ << endl;
    std::cout << "Computed Nodes: " << cplex_solver.cplex_.getNnodes() << endl;
    std::cout << "Elapsed Time: " << cplex_solver.cplex_.getTime() << " sec" << endl;
    std::cout << "Time per Node: " << (cplex_solver.cplex_.getTime() / cplex_solver.cplex_.getNnodes()) * 1000 << " ms/node" << endl;
  } catch (IloException& e) {
    cerr << "Error: " << e << endl;
  }
  env.end();
}
