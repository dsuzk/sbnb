
#ifndef SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_

#include <stack>
#include "bnb_node_selection_interface.h"
#include "node_class.h"

using namespace std;

template<class T>
class DepthFirstTraversal : public BnBNodeSelection<T> {

public:
    DepthFirstTraversal();

    void add_node(Node<T> node);

    Node<T> next_node();

    Node<T> current_node();

    bool has_next_node();

private:
    stack<Node<T> > traversal_order_;
};

template<class T>
DepthFirstTraversal<T>::DepthFirstTraversal() {}

template<class T>
void DepthFirstTraversal<T>::add_node(Node<T> node) {
  this->traversal_order_.push(node);
}

template<class T>
Node<T> DepthFirstTraversal<T>::current_node() {
  return this->traversal_order_.top();
}

template<class T>
Node<T> DepthFirstTraversal<T>::next_node() {
  Node<T> next = this->traversal_order_.top();
  this->traversal_order_.pop();
  return next;
}

template<class T>
bool DepthFirstTraversal<T>::has_next_node() {
  return !this->traversal_order_.empty();
}

#endif //SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
