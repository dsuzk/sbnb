
#ifndef SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_

#include <queue>
#include "node_selection_interface.h"
#include "node_class.h"
#include "depth_first_traversal_class.h"
#include "breadth_first_traversal_class.h"

using namespace std;

enum TraversalType {
    DEPTH_FIRST,
    BREADTH_FIRST
};

template<class T>
class NodeSelection : public NodeSelectionInterface<T> {

public:
    NodeSelection(TraversalType traversal);

    Node<T> *CurrentNode();

    Node<T> *NextNode();

    void SetNextNode(Node<T> *node);

    bool HasNextNode();

private:
    NodeSelectionInterface<T> *traversal_order_;
};

template<class T>
NodeSelection<T>::NodeSelection(TraversalType traversal) {
  switch (traversal) {
    case DEPTH_FIRST :
      traversal_order_ = new DepthFirstTraversal<T>();
      break;
    case BREADTH_FIRST :
      traversal_order_ = new BreadthFirstTraversal<T>();
      break;
  }
}

template<class T>
void NodeSelection<T>::SetNextNode(Node<T> *node) {
  traversal_order_->SetNextNode(node);
}

template<class T>
Node<T> *NodeSelection<T>::CurrentNode() {
  return traversal_order_->CurrentNode();
}

template<class T>
Node<T> *NodeSelection<T>::NextNode() {
  return traversal_order_->NextNode();
}

template<class T>
bool NodeSelection<T>::HasNextNode() {
  return traversal_order_->HasNextNode();
}

#endif //SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
