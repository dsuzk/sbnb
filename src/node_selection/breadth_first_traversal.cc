#include "breadth_first_traversal.h"

BreadthFirstTraversal::BreadthFirstTraversal(){};

Node* BreadthFirstTraversal::NextNode() {
    Node* next = traversal_order_.front();
    traversal_order_.pop();
    return next;
}

void BreadthFirstTraversal::AddNode(Node* node) {
    traversal_order_.push(node);
}

bool BreadthFirstTraversal::HasNextNode() const {
    return !traversal_order_.empty();
}

int BreadthFirstTraversal::getSize(){
    return traversal_order_.size();
}

void BreadthFirstTraversal::printList(){

}
