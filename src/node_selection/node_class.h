#ifndef SBNB_NODE_SELECTION_NODE_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_CLASS_H_

#include "core/optimization_problem_class.h"

class Node {
public:
  Node(OptimizationProblem* problem_, Node* parent = NULL);
  OptimizationProblem* problem;
  void SetFirstChild(Node*);
  void SetNextSibling(Node*);
  const Node* GetFirstChild();
  const Node* GetParent();
  const Node* GetNextSibling();

private:
  Node* parent_ = NULL;
  Node* sibling_ = NULL;
  Node* first_child_ = NULL;
};

#endif //SBNB_NODE_SELECTION_NODE_CLASS_H_
