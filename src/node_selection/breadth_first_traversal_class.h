#ifndef SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_CLASS_H_
#define SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_CLASS_H_

#include <queue>
#include "node_selection_class.h"

using namespace std;

class BreadthFirstTraversal : public NodeSelection {

 public:
  BreadthFirstTraversal();

  Node* CurrentNode();

  Node* NextNode();

  void AddNode(Node* node);

  bool HasNextNode();

 private:
  queue<Node*> traversal_order_;
};

#endif //SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_CLASS_H_
