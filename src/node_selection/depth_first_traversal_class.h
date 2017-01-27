#ifndef SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_

#include <stack>
#include "node_selection_class.h"

using namespace std;

class DepthFirstTraversal : public NodeSelection {

 public:
  DepthFirstTraversal();

  Node* NextNode();
  Node* CurrentNode() const;
  void AddNode(Node* node);
  bool HasNextNode() const;

 private:
  stack<Node*> traversal_order_;
};

#endif //SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_CLASS_H_
