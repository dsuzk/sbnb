#include <stack>
#include "node.h"
#include "depth_first_traversal.h"

using namespace std;

DepthFirstTraversal::DepthFirstTraversal(){};

Node* DepthFirstTraversal::NextNode() {
    Node* next = this->traversal_order_.top();
    this->traversal_order_.pop();
    return next;
}

Node* DepthFirstTraversal::CurrentNode() const {
    return this->traversal_order_.top();
}

void DepthFirstTraversal::AddNode(Node* node) {
    this->traversal_order_.push(node);
}

bool DepthFirstTraversal::HasNextNode() const {
    return !this->traversal_order_.empty();
}
