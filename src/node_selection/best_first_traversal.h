
#ifndef BEST_FIRST_H_
#define BEST_FIRST_H_

#include <queue>
#include "node_selection.h"


struct CompareByObjValue{
public: bool maxProb;
    bool operator()(Node* node1, Node* node2) const;
};

class BestFirstTraversal : public NodeSelection {

public:
    BestFirstTraversal();
    BestFirstTraversal(bool);

    Node* NextNode();
    void AddNode(Node* node);
    bool HasNextNode() const;
    int getSize();
    void printList();

private:

    std::priority_queue<Node,std::vector<Node*>,CompareByObjValue> traversal_order_;
};

#endif /* BEST_FIRST_H_ */
