
#include <queue>
#include "node_class.h"
#include "breadth_first_traversal_class.h"

BreadthFirstTraversal::BreadthFirstTraversal(){};

Node* BreadthFirstTraversal::NextNode() {
  Node* next = traversal_order_.front();
  traversal_order_.pop();
  return next;
}

Node* BreadthFirstTraversal::CurrentNode() const {
  return traversal_order_.front();
}

void BreadthFirstTraversal::AddNode(Node* node) {
  traversal_order_.push(node);
}

bool BreadthFirstTraversal::HasNextNode() const {
  return !traversal_order_.empty();
}
