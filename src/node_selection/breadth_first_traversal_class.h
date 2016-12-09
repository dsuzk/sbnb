
#ifndef SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_

#include <queue>
#include "node_selection_interface.h"
#include "node_class.h"

using namespace std;

template<class T>
class BreadthFirstTraversal : public NodeSelection<T> {

public:
    BreadthFirstTraversal();

    Node<T> *current_node();

    Node<T> *next_node();

    void SetNextNode(Node<T> *node);

    bool HasNextNode();

private:
    queue<Node<T> *> traversal_order_;
};

template<class T>
BreadthFirstTraversal<T>::BreadthFirstTraversal() {}

template<class T>
void BreadthFirstTraversal<T>::SetNextNode(Node<T> *node) {
  this->traversal_order_.push(node);
}

template<class T>
Node<T> *BreadthFirstTraversal<T>::current_node() {
  return this->traversal_order_.front();
}

template<class T>
Node<T> *BreadthFirstTraversal<T>::next_node() {
  Node<T> *next = this->traversal_order_.front();
  this->traversal_order_.pop();
  return next;
}

template<class T>
bool BreadthFirstTraversal<T>::HasNextNode() {
  return !this->traversal_order_.empty();
}

#endif //SBNB_NODE_SELECTION_BREATH_FIRST_TRAVERSAL_CLASS_H_
