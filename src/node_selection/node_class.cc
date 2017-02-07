
#include "node_class.h"

Node::Node(OptimizationProblem *problem, Node* parent)
  : problem(problem),
    parent_(parent) {}

void Node::SetFirstChild(Node *first_child) {
  first_child_ = first_child;
}

void Node::SetNextSibling(Node *next_sibling) {
  sibling_ = next_sibling;
}

const Node* Node::GetFirstChild() const {
  return first_child_;
}

const Node* Node::GetNextSibling() const {
  return sibling_;
}

const Node* Node::GetParent() const {
  return parent_;
}

void Node::Fathom() const {
  problem->Fathom();

  // recursive check to fathom parents
  if (!IsRoot() && SiblingFathomed()) {
    parent_->Fathom();
  }
}

const bool Node::SiblingFathomed() const {
  if (sibling_ && sibling_->problem->IsFathomed()) { // left child 
    return true;
  } else if (!sibling_ && parent_->first_child_->problem->IsFathomed()) { // right child
    return true;
  }
  return false;
}

const bool Node::IsRoot() const {
  return (parent_ == NULL);
}
