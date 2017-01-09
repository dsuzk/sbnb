
#include <queue>
#include "node_class.h"
#include "breadth_first_traversal_class.h"

using namespace std;

BreadthFirstTraversal::BreadthFirstTraversal() {}

void BreadthFirstTraversal::AddNode(Node node) {
  this->traversal_order_.push(node);
}

Node BreadthFirstTraversal::CurrentNode() {
  return this->traversal_order_.front();
}

Node BreadthFirstTraversal::NextNode() {
  Node next = this->traversal_order_.front();
  this->traversal_order_.pop();
  return next;
}

bool BreadthFirstTraversal::HasNextNode() {
  return !this->traversal_order_.empty();
}
