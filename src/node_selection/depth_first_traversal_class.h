
#ifndef SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_

#include <stack>
#include "node_selection_interface.h"
#include "node_class.h"

using namespace std;

template<class T>
class DepthFirstTraversal : public NodeSelectionInterface<T> {

public:
    DepthFirstTraversal();

    Node<T> *NextNode();

    Node<T> *CurrentNode();

    void SetNextNode(Node<T> *node);

    bool HasNextNode();

private:
    stack<Node<T> *> traversal_order_;
};

template<class T>
DepthFirstTraversal<T>::DepthFirstTraversal() {}

template<class T>
void DepthFirstTraversal<T>::SetNextNode(Node<T> *node) {
  this->traversal_order_.push(node);
}

template<class T>
Node<T> *DepthFirstTraversal<T>::CurrentNode() {
  return this->traversal_order_.top();
}

template<class T>
Node<T> *DepthFirstTraversal<T>::NextNode() {
  Node<T> *next = this->traversal_order_.top();
  this->traversal_order_.pop();
  return next;
}

template<class T>
bool DepthFirstTraversal<T>::HasNextNode() {
  return !this->traversal_order_.empty();
}

#endif //SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
