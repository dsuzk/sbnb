#ifndef SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_

#include <queue>
#include "node_selection_interface.h"

using namespace std;

enum TraversalType {
  DEPTH_FIRST,
  BREADTH_FIRST
};

class NodeSelection : public NodeSelectionInterface {

 public:
  NodeSelection(TraversalType traversal);

  Node CurrentNode();

  Node NextNode();

  void AddNode(Node node);

  bool HasNextNode();

 private:
  NodeSelectionInterface *traversal_order_;
};

#endif //SBNB_NODE_SELECTION_NODE_SELECTION_CLASS_H_
