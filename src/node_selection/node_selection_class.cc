
#include <queue>
#include "node_class.h"
#include "node_selection_class.h"
#include "depth_first_traversal_class.h"
#include "breadth_first_traversal_class.h"

using namespace std;

NodeSelection::NodeSelection(TraversalType traversal) {
  switch (traversal) {
    case DEPTH_FIRST :traversal_order_ = new DepthFirstTraversal();
      break;
    case BREADTH_FIRST :traversal_order_ = new BreadthFirstTraversal();
      break;
  }
}

void NodeSelection::AddNode(Node node) {
  traversal_order_->AddNode(node);
}

Node NodeSelection::CurrentNode() {
  return traversal_order_->CurrentNode();
}

Node NodeSelection::NextNode() {
  return traversal_order_->NextNode();
}

bool NodeSelection::HasNextNode() {
  return traversal_order_->HasNextNode();
}
