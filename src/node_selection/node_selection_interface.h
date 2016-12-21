
#ifndef SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
#define SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_

#include "node_class.h"

template<class T>
class NodeSelectionInterface {

public:

    virtual Node<T> *CurrentNode() = 0;

    virtual Node<T> *NextNode() = 0;

    virtual void AddNode(Node<T> *node) = 0;

    virtual bool HasNextNode() = 0;
};

#endif //SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
