#ifndef SBNB_NODE_SELECTION_NODE_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_CLASS_H_

#include "core/optimization_problem_class.h"

class Node {
public:
  Node(OptimizationProblem* problem_, Node* parent = NULL);
  OptimizationProblem* problem;
  void SetFirstChild(Node*);
  void SetNextSibling(Node*);
  const Node* GetFirstChild() const;
  const Node* GetParent() const;
  const Node* GetNextSibling() const;

  void Fathom() const;

private:
  Node* parent_ = NULL;
  Node* sibling_ = NULL;
  Node* first_child_ = NULL;

  const bool SiblingFathomed() const;
  const bool IsRoot() const;
};

#endif //SBNB_NODE_SELECTION_NODE_CLASS_H_
