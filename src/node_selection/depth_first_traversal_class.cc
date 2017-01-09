
#include <stack>
#include "node_class.h"
#include "depth_first_traversal_class.h"

using namespace std;

DepthFirstTraversal::DepthFirstTraversal() {}

void DepthFirstTraversal::AddNode(Node node) {
  this->traversal_order_.push(node);
}

Node DepthFirstTraversal::CurrentNode() {
  return this->traversal_order_.top();
}

Node DepthFirstTraversal::NextNode() {
  Node next = this->traversal_order_.top();
  this->traversal_order_.pop();
  return next;
}

bool DepthFirstTraversal::HasNextNode() {
  return !this->traversal_order_.empty();
}
