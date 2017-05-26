#include "node.h"


Node::Node(IloCplex* cplex, IloNumVarArray* variables,bool console_output)
: cplex_(cplex),
  variables_(variables),
  has_fixing_installed(true),
  parent_(NULL),
  level_(0),
  console_output_(console_output)
    {}

Node::Node(IloCplex* cplex, IloNumVarArray* variables, IloConstraint *constraint, Node* parent, int level,bool console_output)
: cplex_(cplex),
  variables_(variables),
  fixing_(constraint),
  parent_(parent),
  level_(level),
  console_output_(console_output)
    {}

void Node::SetFirstChild(Node *first_child) {
    first_child_ = first_child;
}

void Node::SetNextSibling(Node *next_sibling) {
    sibling_ = next_sibling;
}

Node* Node::GetFirstChild() const {
    return first_child_;
}

Node* Node::GetNextSibling() const {
    return sibling_;
}

Node* Node::GetParent() const {
    return parent_;
}

const int Node::GetLevel() const {
    return level_;
}

void Node::Fathom() {
    FreeFixing();
    fathomed_ = true;

    // recursive check to fathom parents
    if (!IsRoot() && SiblingFathomed()) {
	parent_->Fathom();
    }
}

const bool Node::SiblingFathomed() const {
    if (sibling_ && sibling_->IsFathomed()) { // left child
	return true;
    } else if (!sibling_ && parent_->first_child_->IsFathomed()) { // right child
	return true;
    }
    return false;
}

const bool Node::IsFathomed() const {
    return fathomed_;
}

const bool Node::IsRoot() const {
    return (parent_ == NULL);
}


IloConstraint& Node::GetFixing() const {
    return *fixing_;
}

void Node::Solve() {
    solved_ = cplex_->solve();
    cplex_status_ = cplex_->getStatus();
    solution_ = IloNumArray(cplex_->getEnv());

    if (solved_) {
	cplex_->getValues(solution_, *variables_);
	objective_value_ = cplex_->getObjValue();
    }
}

void Node::InstallFixing() {
    if (console_output_)
//	std::cout<<"fixing installed,solved,fathomed: "<<has_fixing_installed<<solved_<<fathomed_<<std::endl;
	std::cout << "\tInstalling fixing: " << *fixing_ << std::endl;
    cplex_->getModel().add(*fixing_);
    has_fixing_installed = true;
}

void Node::RemoveFixing() {
    if (has_fixing_installed) {
	if (console_output_)
	    std::cout << "\tRemoving fixing: " << *fixing_ << std::endl;
	cplex_->getModel().remove(*fixing_);
	has_fixing_installed = false;
    }
}

void Node::FreeFixing() {
    if (fixing_) {
	if (console_output_)
	    std::cout << "\tFreeing fixing: " << *fixing_ << std::endl;
	fixing_->end();
	delete fixing_;
    }
    has_fixing_installed = false;
}

bool Node::IsSolved() const {
    return solved_;
}

bool Node::IsInfeasible() const {
    return (cplex_status_ == IloAlgorithm::Infeasible);
}

bool Node::IsUnbounded() const {
    return (cplex_status_ == IloAlgorithm::Unbounded || cplex_status_ == IloAlgorithm::InfeasibleOrUnbounded);
}

double Node::GetObjectiveValue() const {
    return objective_value_;
}

const IloNumArray &Node::GetSolution() const {
    return solution_;
}

bool Node::HasFixingInstalled() const {
    return has_fixing_installed;
}
