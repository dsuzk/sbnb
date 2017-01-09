#ifndef SBNB_NODE_SELECTION_NODE_SELECTION_INTERFACE_H_
#define SBNB_NODE_SELECTION_NODE_SELECTION_INTERFACE_H_

#include "node_class.h"

class NodeSelectionInterface {

 public:

  virtual Node CurrentNode() = 0;

  virtual Node NextNode() = 0;

  virtual void AddNode(Node node) = 0;

  virtual bool HasNextNode() = 0;
};

#endif //SBNB_NODE_SELECTION_NODE_SELECTION_INTERFACE_H_
