#include <iostream>
#include <ctime>
#include <string>
#include "core/branch_and_bound.h"
#include "node_selection/breadth_first_traversal.h"
#include "statistics/cplex_solver.h"

using namespace std;

void SolveLP(int traversal_flag, int selection_flag, bool verbose_flag, char* file_path);
void ShowUsage();
void CompareWithCplex(char* file_path);

int main(int argc, char* argv[]) {
  int selection_flag = -1; // Depth First Traversal = 0, Breadth First Traversal = 1
  int branching_flag = -1; // First Fractional = 0
  bool verbose_flag = false;
  bool compare_flag = false;
  char *file_path = NULL;
  int option_character;
  opterr = 0;

  while ((option_character = getopt (argc, argv, "dbfvch")) != -1)
    switch (option_character) {
    case 'd':
      if (selection_flag > -1) {
        cerr << "-d option is mutually exclusive with -b. See \"sbnb -h for help.\"" << endl;
        return 0;
      }
      selection_flag = 0;
      break;
    case 'b':
      if (selection_flag > -1) {
        cerr << "-b option is mutually exclusive with -d. See \"sbnb -h for help.\"" << endl;
        return 0;
      }
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
    std:cerr << "No file path specified. See \"sbnb -h for help.\"" << endl;
    return 1;
  }

  if (compare_flag)
    CompareWithCplex(file_path);

  return 0;
}

void ShowUsage() {
  cout << "USAGE: sbnb [-d|-b] [-f] [-v] [-c] file_path" << std::endl;
  cout << "\t -d: Set node selection to 'Depth first traversal' (default)" << std::endl;
  cout << "\t -b: Set node selection to 'Breadth first traversal'" << std::endl;
  cout << "\t -f: Set branching rule to 'First fractional' (default)" << std::endl;
  cout << "\t -v: Enable verbose output" << std::endl;
  cout << "\t -c: Compare with Cplex Solver" << std::endl;
  cout << "\t file_path: Location of linear problem file (.lp/.mps file formats). REQUIRED " << std::endl;
  cout << "EXAMPLES:" << std::endl << "\t sbnb -bc test/testmodels/sample3.mps" << std::endl;
  cout << "\t sbnb -v test/testmodels/sample10.mps" << std::endl;
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

    cout << endl << "------- Branch And Bound Summary -------" << endl;
    cout << "Variable Values: " << bnb.GetBestSolution() << endl;
    cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    cout << "Max Node Level: " << bnb.GetStatistics().maxLevel << endl;
    cout << "Computed Nodes: " << bnb.GetStatistics().nNodes << endl;
    cout << "Elapsed Time: " << bnb.GetStatistics().runtime << " sec" << endl;
    cout << "Time per Node: " << (bnb.GetStatistics().runtime / bnb.GetStatistics().nNodes) * 1000 << " ms/node" << endl << endl;
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

    cout << "------- Cplex Statistics -------" << endl;
    cout << "Objective Value: " << cplex_solver.global_primal_bound_ << endl;
    cout << "Computed Nodes: " << cplex_solver.cplex_.getNnodes() << endl;
    cout << "Elapsed Time: " << cplex_solver.cplex_.getTime() << " sec" << endl;
    cout << "Time per Node: " << (cplex_solver.cplex_.getTime() / cplex_solver.cplex_.getNnodes()) * 1000 << " ms/node" << endl;
  } catch (IloException& e) {
    cerr << "Error: " << e << endl;
  }
  env.end();
}
