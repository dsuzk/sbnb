#include "depth_first_traversal.h"

using namespace std;

DepthFirstTraversal::DepthFirstTraversal(){};

Node* DepthFirstTraversal::NextNode() {
    Node* next = this->traversal_order_.top();
    this->traversal_order_.pop();
    return next;
}

void DepthFirstTraversal::AddNode(Node* node) {
    this->traversal_order_.push(node);
}

bool DepthFirstTraversal::HasNextNode() const {
    return !this->traversal_order_.empty();
}

int DepthFirstTraversal::getSize(){
    return traversal_order_.size();
}

void DepthFirstTraversal::printList(){

}
