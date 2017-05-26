#ifndef SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_H_
#define SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_H_

#include <queue>
#include "node_selection.h"

class BreadthFirstTraversal : public NodeSelection {

public:
    BreadthFirstTraversal();

    Node* NextNode();
    Node* CurrentNode() const;
    void AddNode(Node* node);
    bool HasNextNode() const;

private:
    std::queue<Node*> traversal_order_;
};

#endif //SBNB_NODE_SELECTION_BREADTH_FIRST_TRAVERSAL_H_
