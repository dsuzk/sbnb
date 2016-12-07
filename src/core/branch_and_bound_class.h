#ifndef _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_
#define _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_

#include <ilcplex/ilocplex.h>
#include "node_selection/node_class.h"
#include "core/bnb_problem_class.h"

/**
 * @brief The main entry point for the branch and bound framework
 */
class BranchAndBound {
 private:
  IloModel* model_;
  IloNumVarArray* variables_;

  IloCplex cplex_;

  double global_dual_bound_;
  double global_primal_bound_;

  // Numerical Values Array as returned by eg. cplex.getValues
  // Solution of cplex.solve()
  IloNumArray best_solution_;
  // Node<IPModel*> current_node_;


 public:
  BranchAndBound(IloModel*, IloNumVarArray*);

  const IloNumVarArray& variables() const;
  const IloModel& model() const;

  double global_dual_bound() const;
  double global_primal_bound() const;

  const IloNumArray& best_solution() const;

  // wait for BNB implementation
  // const Node<IPModel*>* currentNode() const;

  void optimize();
};

#endif // _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_

