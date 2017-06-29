#include <iostream>
#include <ctime>
#include <string>
#include <unistd.h>
#include "core/branch_and_bound.h"
#include "statistics/cplex_solver.h"
#include <string>

using namespace std;

void SolveLP(int selection_flag, int branching_flag, bool verbose_flag, char* file_path, int strongBranchingPseudoNodes, double strongBranchingAlpha);
void ShowUsage();
void CompareWithCplex(char* file_path);
void setObjectiveCoefficients(IloCplex* cplex, vector<double>* coef);

int main(int argc, char* argv[]) {
    int selection_flag = -1; // Depth First Traversal = 0, Breadth First Traversal = 1, Best First Traversal = 2
    int branching_flag = -1; // First Fractional = 0, Close Half = 1, Close Half Expensive = 2, StrongBranch = 3
    bool verbose_flag = false;
    bool compare_flag = false;
    char *file_path = NULL;
    int option_character;
    int strongBranchingPseudoNodes=20;
    double strongBranchingAlpha=0.9;
    opterr = 0;

    while ((option_character = getopt (argc, argv, "dbefgij::vcha:")) != -1){
	switch (option_character) {
	case 'd':
	    if (selection_flag > -1) {
		cerr << "-d option is mutually exclusive with -b and -e. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    selection_flag = 0;
	    break;
	case 'b':
	    if (selection_flag > -1) {
		cerr << "-b option is mutually exclusive with -d and -e. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    selection_flag = 1;
	    break;
	case 'e':
	    if (selection_flag > -1) {
		cerr << "-e option is mutually exclusive with -d and -b. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    selection_flag = 2;
	    break;
	case 'f':
	    if (branching_flag > -1) {
		cerr << "-f option is mutually exclusive with -g, -i and -j. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    branching_flag = 0;
	    break;
	case 'g':
	    if (branching_flag > -1) {
		cerr << "-g option is mutually exclusive with -f, -i and -j. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    branching_flag = 1;
	    break;
	case 'i':
	    if (branching_flag > -1) {
		cerr << "-i option is mutually exclusive with -f, -g and -j. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    branching_flag = 2;
	    break;
	case 'j':
	    if (branching_flag > -1) {
		cerr << "-j option is mutually exclusive with -f, -g and -i. See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    branching_flag = 3;
	    if(optarg==NULL){
		std::cout<<"No value for strong branching pseudo nodes given. Setting to standard "<<strongBranchingPseudoNodes<<". "<<std::endl;
	    }else{
		strongBranchingPseudoNodes=atoi(optarg);
	    }

	    break;
	case 'a':
	    if (branching_flag != 3) {
		cerr << "-a option is only available for strong branching(-j option). See \"sbnb -h for help.\"" << endl;
		return 0;
	    }
	    strongBranchingAlpha=atof(optarg);
	    if(strongBranchingAlpha<0 or strongBranchingAlpha>1){
		cerr << "Strong branching alpha has to be between 0 and 1. " << endl;
		return 0;
	    }

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
    }

    if (optind < argc) {
	file_path = argv[optind];
	if (compare_flag){
	    cout<<"'Use Cplex' argument given; only solving with cplex. "<<endl;
	    CompareWithCplex(file_path);
	}else{
	    SolveLP(selection_flag, branching_flag, verbose_flag, file_path, strongBranchingPseudoNodes, strongBranchingAlpha);
	}
    } else {
	std:cerr << "No file path specified. See \"sbnb -h for help.\"" << endl;
	return 1;
    }

    return 0;
}

void ShowUsage() {
    cout << "USAGE: sbnb [-d|-b|-e] [-f|-g|-i|-j[-a]] [-v] [-c] file_path" << std::endl;
    cout << "\t -d: Set node selection to 'Depth first traversal' (default)" << std::endl;
    cout << "\t -b: Set node selection to 'Breadth first traversal'" << std::endl;
    cout << "\t -e: Set node selection to 'Best first traversal'" << std::endl;
    cout << "\t -f: Set branching rule to 'First fractional' (default)" << std::endl;
    cout << "\t -g: Set branching rule to 'Close half'" << std::endl;
    cout << "\t -i: Set branching rule to 'Close half expensive'" << std::endl;
    cout << "\t -j: Set branching rule to 'Strong Branching', optional integer argument: number of pseudo nodes(default: 20)" << std::endl;
    cout << "\t -a: For branching rule 'Strong Branching', required float argument alpha(default: 0.9)" << std::endl;
    cout << "\t -v: Enable verbose output" << std::endl;
    cout << "\t -c: Use Cplex Solver" << std::endl;
    cout << "\t file_path: Location of linear problem file (.lp/.mps file formats). REQUIRED " << std::endl;
    cout << "EXAMPLES:" << std::endl << "\t sbnb -bc test/models/sample3.mps" << std::endl;
    cout << "\t sbnb -v test/models/sample10.mps" << std::endl;
}

void SolveLP(int selection_flag, int branching_flag, bool verbose_flag, char* file_path, int strongBranchingPseudoNodes, double strongBranchingAlpha) {
    IloEnv env;
    IloModel model(env);
    IloNumVarArray vars(env);
    IloCplex cplex(model);
    IloRangeArray constraints(env);
    IloObjective objective;

    try {
	cplex.setOut(env.getNullStream());
	cplex.importModel(model, file_path, objective, vars, constraints);
    } catch (IloException& e) {
	cerr << "Error: " << e << endl;
    }

    std::cout<<"Maximizationproblem: "<<(cplex.getObjective().getSense() == IloObjective::Sense::Maximize)<<std::endl;

    NodeSelection* node_selection;
    Branching* branching_rule;
    vector<double> coef;

    switch (selection_flag) {
    case 0:
	std::cout<<"Set up depth first node selection. "<<std::endl;
	node_selection = new DepthFirstTraversal();
	break;
    case 1:
	std::cout<<"Set up breadth first node selection. "<<std::endl;
	node_selection = new BreadthFirstTraversal();
	break;
    case 2:
	std::cout<<"Set up best first node selection. "<<std::endl;
	node_selection = new BestFirstTraversal(cplex.getObjective().getSense() == IloObjective::Sense::Maximize);
	break;
    default:
	std::cout<<"Using default: Set up depth first node selection. "<<std::endl;
	node_selection = new DepthFirstTraversal();
    }


    switch (branching_flag) {
    case 0:
	std::cout<<"Set up first fractional branching. "<<std::endl;
	branching_rule = new FirstFractional(vars, cplex.getParam(IloCplex::EpRHS));
	break;
    case 1:
	std::cout<<"Set up close half branching. "<<std::endl;
	branching_rule = new CloseHalf(vars, cplex.getParam(IloCplex::EpRHS));
	break;
    case 2:
	std::cout<<"Set up close half expensive branching. "<<std::endl;
	setObjectiveCoefficients(&cplex,&coef);
	branching_rule = new CloseHalfExpensive(vars, coef,cplex.getParam(IloCplex::EpRHS));
	break;
    case 3:
	std::cout<<"Set up strong branching with number of pseudo nodes = "<<strongBranchingPseudoNodes<<" and alpha = "<<strongBranchingAlpha<<". "<<std::endl;
	branching_rule = new StrongBranching(vars, &cplex, strongBranchingPseudoNodes, strongBranchingAlpha, cplex.getParam(IloCplex::EpRHS));
	break;
    default:
	std::cout<<"Using default: Set up first fractional branching. "<<std::endl;
	branching_rule = new FirstFractional(vars, cplex.getParam(IloCplex::EpRHS));
    }


    // TODO (lukas): I moved the cplex model import including try/catch to the beginning of the function, is it necessary to try/catch the following lines too?
    BranchAndBound bnb(&cplex, &model, &vars, branching_rule, node_selection, verbose_flag);

    bnb.optimize();

    cout << endl << "------- Branch And Bound Summary -------" << endl;
    //    if(cplex.getStatus()==IloAlgorithm::Optimal){
    //	cout << "Variable Values ("<<bnb.GetBestSolution().getSize()<<"): " << bnb.GetBestSolution() << endl;
    //	cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    //    }else{
    //	cout<<"Cplex status: "<<cplex.getStatus()<<endl;
    //    }

    cout << "Variable Values ("<<bnb.GetBestSolution().getSize()<<"): " << bnb.GetBestSolution() << endl;
    cout << "Objective Value: " << bnb.GetGlobalPrimalBound() << endl;
    cout << "Max Node Level: " << bnb.GetStatistics().maxLevel << endl;
    cout << "Computed Nodes: " << bnb.GetStatistics().nNodes << endl;
    cout << "Elapsed Time: " << bnb.GetStatistics().runtime << " sec" << endl;
    cout << "Time per Node: " << (bnb.GetStatistics().runtime / bnb.GetStatistics().nNodes) * 1000 << " ms/node" << endl << endl;

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
	if(cplex_solver.cplex_.getStatus()==IloAlgorithm::Optimal){
	    cout << "Variable Values ("<<cplex_solver.getSolution().getSize()<<"): " << cplex_solver.getSolution() << endl;
	    cout << "Objective Value: " << cplex_solver.global_primal_bound_ << endl;
	}else{
	    cout<<"Cplex status: "<<cplex_solver.cplex_.getStatus()<<endl;
	}

	cout << "Computed Nodes: " << cplex_solver.cplex_.getNnodes() << endl;
	cout << "Elapsed Time: " << cplex_solver.cplex_.getTime() << " sec" << endl;
	cout << "Time per Node: " << (cplex_solver.cplex_.getTime() / cplex_solver.cplex_.getNnodes()) * 1000 << " ms/node" << endl;
    } catch (IloException& e) {
	cerr << "Error: " << e << endl;
    }
    env.end();
}


void setObjectiveCoefficients(IloCplex* cplex, vector<double>* coef){

    IloExpr::LinearIterator linIterator_ = cplex->getObjective().getLinearIterator();

    while (linIterator_.ok()){
	coef->push_back(linIterator_.getCoef());
	++linIterator_;
    }
}
