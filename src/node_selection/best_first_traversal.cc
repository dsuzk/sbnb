
#include "best_first_traversal.h"


bool CompareByObjValue::operator()(Node* node1, Node* node2) const{
    if (maxProb){
	return node1->GetObjectiveValue() < node2->GetObjectiveValue();
    }else{
	return node1->GetObjectiveValue() > node2->GetObjectiveValue();
    }
}


BestFirstTraversal::BestFirstTraversal(){};

BestFirstTraversal::BestFirstTraversal(bool maxProblem){
    CompareByObjValue* a = new CompareByObjValue();
    a->maxProb=maxProblem;
    delete a;
};


Node* BestFirstTraversal::NextNode() {
    Node* next = traversal_order_.top();
    traversal_order_.pop();
    return next;
}

void BestFirstTraversal::AddNode(Node* node) {
    traversal_order_.push(node);
}

bool BestFirstTraversal::HasNextNode() const {
    return !traversal_order_.empty();
}

int BestFirstTraversal::getSize(){
    return traversal_order_.size();
}

void BestFirstTraversal::printList(){}
