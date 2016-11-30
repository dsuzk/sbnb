
#ifndef SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
#define SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_

#include "node_class.h"

template<class T>
class BnBNodeSelection {

public:
    BnBNodeSelection();

    virtual Node<T> *current_node() = 0;

    virtual Node<T> *next_node() = 0;

    virtual void SetNextNode(Node<T> *node) = 0;

    virtual bool HasNextNode() = 0;
};

template<class T>

BnBNodeSelection<T>::BnBNodeSelection() {}

#endif //SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
