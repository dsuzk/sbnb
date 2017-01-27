
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
