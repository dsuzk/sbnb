
#ifndef SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_

#include <queue>
#include "bnb_node_selection_interface.h"
#include "node_class.h"

using namespace std;

template<class T>
class BreadthFirstTraversal : public BnBNodeSelection<T> {

public:
    BreadthFirstTraversal();

    void add_node(Node<T> node);

    Node<T> current_node();

    Node<T> next_node();

    bool has_next_node();

private:
    queue<Node<T> > traversal_order_;
};

template<class T>
BreadthFirstTraversal<T>::BreadthFirstTraversal() {}

template<class T>
void BreadthFirstTraversal<T>::add_node(Node<T> node) {
  this->traversal_order_.push(node);
}

template<class T>
Node<T> BreadthFirstTraversal<T>::current_node() {
  return this->traversal_order_.front();
}

template<class T>
Node<T> BreadthFirstTraversal<T>::next_node() {
  Node<T> next = this->traversal_order_.front();
  this->traversal_order_.pop();
  return next;
}

template<class T>
bool BreadthFirstTraversal<T>::has_next_node() {
  return !this->traversal_order_.empty();
}

#endif //SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_
