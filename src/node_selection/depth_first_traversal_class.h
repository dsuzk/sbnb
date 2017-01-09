#ifndef SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_

#include <stack>
#include "node_selection_interface.h"

using namespace std;

class DepthFirstTraversal : public NodeSelectionInterface {

 public:
  DepthFirstTraversal();

  Node NextNode();

  Node CurrentNode();

  void AddNode(Node node);

  bool HasNextNode();

 private:
  stack<Node> traversal_order_;
};

#endif //SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
