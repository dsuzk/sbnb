#ifndef SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_H_
#define SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_H_

#include <stack>
#include "node_selection.h"

class DepthFirstTraversal : public NodeSelection {

public:
    DepthFirstTraversal();

    Node* NextNode();
    Node* CurrentNode() const;
    void AddNode(Node* node);
    bool HasNextNode() const;

private:
    std::stack<Node*> traversal_order_;
};

#endif //SBNB_NODE_SELECTION_DEPTH_FIRST_TRAVERSAL_H_
