
#ifndef SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
#define SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_

#include "node_class.h"

template<class T>
class BnBNodeSelection {

public:
    BnBNodeSelection();

    virtual void add_node(Node<T> node) = 0;

    virtual Node<T> current_node() = 0;

    virtual Node<T> next_node() = 0;

    virtual bool has_next_node() = 0;

};


template<class T>

BnBNodeSelection<T>::BnBNodeSelection() {}

#endif //SBNB_NODE_SELECTION_BNB_NODE_SELECTION_INTERFACE_H_
