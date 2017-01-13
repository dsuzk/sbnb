#ifndef SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_

#include <queue>
#include "node_class.h"

using namespace std;

class NodeSelection {

 public:
  virtual Node CurrentNode() = 0;

  virtual Node NextNode() = 0;

  virtual void AddNode(Node node) = 0;

  virtual bool HasNextNode() = 0;


};

#endif //SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
