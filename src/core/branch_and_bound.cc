#include <vector>
#include "branch_and_bound.h"

BranchAndBound::BranchAndBound(IloCplex* cplex, IloModel* model, IloNumVarArray* variables, Branching* branching, NodeSelection* node_selection, bool console_output)
: cplex_(cplex),
  model_(model),
  variables_(variables),
  best_solution_(IloNumArray(model_->getEnv())),
  branching_(branching),
  node_selection_(node_selection),
  console_output_(console_output),
  statistics_() {


    if (IsMaximizationProblem()) {
	global_primal_bound_ = -IloInfinity;
    } else {
	global_primal_bound_ = IloInfinity;
    }

    // relaxate variables
    model_->add(IloConversion(cplex_->getEnv(), *variables_, ILOFLOAT));
    cplex_->setOut(model_->getEnv().getNullStream());
}

/*
 * @ file
 *
 * 0.generate root problem and add to node selection and solve root problem
 * while (NodeSelection has next node) {
 *    1. get next node from NodeSelection
 *    2. install fixings
 *    3. if infeasible or unbounded, process next node (skip loop / break)
 *    4. if objective value is worse than global primal bound, process next node
 *    5. if x* is integer solution, update global_primal_bound, process next node
 *    6.  - get (next) variable to fixate from Branching_Rule
 *        - generate two (sub-) nodes with Constraints from Branching_Rule and add to node_selection
 * }
 */
void BranchAndBound::optimize() {
    StrongBranching *b=dynamic_cast<StrongBranching*>(branching_);
    bool usingStrongBranching;
    if(b!=NULL){
	usingStrongBranching=true;
    }else{
	usingStrongBranching=false;
    }
    Node* current_node = new Node(cplex_,variables_,console_output_);
    node_selection_->AddNode(current_node);

    current_node->Solve();

    std::vector<IloConstraint*> branched_constraints;
    IloNumArray current_solution_variables;

    const float begin = clock();

    int help=0;

    while (node_selection_->HasNextNode()) {

	Node* previous_node = current_node;
	current_node = node_selection_->NextNode();


	if (console_output_)
	    std::cout << "[NODE " << statistics_.nNodes << " at LEVEL " << current_node->GetLevel() << "]" << std::endl;
	statistics_.nNodes++;

	InstallFixings(previous_node, current_node);	//@todo (lukas): optimize...

	if (current_node->IsInfeasible() || current_node->IsUnbounded()) {
	    if (console_output_)
		std::cout << "\tSolution is unfeasible or unbounded: fathom node" << std::endl;
	    current_node->Fathom();
	    continue;
	}

	double objective_value = current_node->GetObjectiveValue();

	if (!IsBetterObjectiveValue(objective_value)) {
	    if (console_output_)
		std::cout << "\tSolution has worse objective value: fathom node" << std::endl;
	    current_node->Fathom();
	    continue;
	}
	if (console_output_)
	    std::cout <<  "\tSolution has better objective value [" << objective_value << "]: ";

	current_solution_variables = current_node->GetSolution();

	if (usingStrongBranching){
	    b->reduceNBranch(current_node->GetLevel());
	}

	branched_constraints = branching_->Branch(current_solution_variables);
	bool is_integer_solution = branched_constraints.size() == 0;
	if (is_integer_solution) {
	    if (console_output_) {
		std::cout <<  "integer solution - fathom node" << std::endl;
		std::cout <<  "\tNew best objective value: [" << objective_value << "]!" << std::endl;
	    }
	    global_primal_bound_ = objective_value;
	    best_solution_ = current_solution_variables;
	    current_node->Fathom();
	} else {
	    if (console_output_)
		std::cout <<  "non-integer solution - branch" << std::endl;

	    GenerateSubproblems(branched_constraints, current_node, *node_selection_);
	}

	statistics_.maxLevel = (current_node->GetLevel() > statistics_.maxLevel) ? current_node->GetLevel() : statistics_.maxLevel;
    }
    const float duration = (clock() - begin)/CLOCKS_PER_SEC;
    statistics_.runtime = duration;
}

void BranchAndBound::InstallFixings( Node* previous_node,  Node* current_node) const {

    //Find common ancestor and add new fixings to model
    while(!current_node->HasFixingInstalled()) {
	current_node->InstallFixing();
	current_node = current_node->GetParent();
    }

    //Remove old fixings from model
    while(previous_node != current_node) {
	previous_node->RemoveFixing();
	previous_node = previous_node->GetParent();
    }
}

void BranchAndBound::GenerateSubproblems(std::vector<IloConstraint*> &branched_constraints,
	Node* parent_node,
	NodeSelection &node_selection_) {

    if (console_output_)
	std::cout << "\tGenerate Subproblems:"<< std::endl;

    int level = parent_node->GetLevel();

    Node* sub_problem_node_1 = new Node(cplex_, variables_, branched_constraints[0], parent_node, level+1, console_output_);
    Node* sub_problem_node_2 = new Node(cplex_, variables_, branched_constraints[1], parent_node, level+1, console_output_);


    parent_node->SetFirstChild(sub_problem_node_1);
    sub_problem_node_1->SetNextSibling(sub_problem_node_2);

    sub_problem_node_1->InstallFixing();
    sub_problem_node_1->Solve();
    sub_problem_node_1->RemoveFixing();

    sub_problem_node_2->InstallFixing();
    sub_problem_node_2->Solve();
    sub_problem_node_2->RemoveFixing();

    node_selection_.AddNode(sub_problem_node_1);
    node_selection_.AddNode(sub_problem_node_2);
}


const IloNumArray& BranchAndBound::GetBestSolution() const {
    return best_solution_;
}

const double BranchAndBound::GetGlobalPrimalBound() const {
    return global_primal_bound_;
}

const Statistics& BranchAndBound::GetStatistics() const {
    return statistics_;
}

const bool BranchAndBound::IsBetterObjectiveValue(double objective_value) const {
    if (IsMaximizationProblem()) {
	return (objective_value > global_primal_bound_);
    } else {
	return (objective_value < global_primal_bound_);
    }
}

const bool BranchAndBound::IsMaximizationProblem() const {
    return cplex_->getObjective().getSense() == IloObjective::Sense::Maximize;
}
