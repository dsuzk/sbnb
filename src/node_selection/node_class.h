#ifndef SBNB_NODE_SELECTION_NODE_CLASS_H_
#define SBNB_NODE_SELECTION_NODE_CLASS_H_

#include "core/optimization_problem_class.h"

class Node {

 public:
  Node(OptimizationProblem *problem_);
  OptimizationProblem *problem;
};

#endif //SBNB_NODE_SELECTION_NODE_CLASS_H_
