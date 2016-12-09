
#ifndef SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
#define SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_

#include "node_class.h"

template<class T>
class NodeSelection {

public:
    NodeSelection();

    virtual Node<T> *CurrentNode() = 0;

    virtual Node<T> *NextNode() = 0;

    virtual void SetNextNode(Node<T> *node) = 0;

    virtual bool HasNextNode() = 0;
};

template<class T>

NodeSelection<T>::NodeSelection() {}

#endif //SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
