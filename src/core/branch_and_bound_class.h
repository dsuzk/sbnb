#ifndef SBNB_CORE_BRANCH_AND_BOUND_CLASS_H
#define SBNB_CORE_BRANCH_AND_BOUND_CLASS_H

#include <ilcplex/ilocplex.h>
#include "core/optimization_problem_class.h"
#include "branching/first_fractional.h"
#include "node_selection/depth_first_traversal_class.h"

/**
 * @brief The main entry point for the branch and bound framework
 */
class BranchAndBound {
 private:
  IloModel* model_;
  IloNumVarArray* variables_;
  Branching* branching_;
  NodeSelection* node_selection_;

  IloCplex cplex_;
  double global_primal_bound_;
  IloNumArray best_solution_;

  const bool IsBetterObjectiveValue(double objective_value) const;
  void GenerateSubproblems(std::vector<IloConstraint>&, Node*, NodeSelection&);

 public:
  //default: first fractional + depth first traversal
  BranchAndBound(IloModel*, IloNumVarArray*, Branching* = new FirstFractional(), NodeSelection* = new DepthFirstTraversal());

  const IloNumVarArray& GetVariables() const;
  const IloModel& GetModel() const;

  const bool IsMaximizationProblem() const;

  double GetGlobalPrimalBound() const;

  const IloNumArray& GetBestSolution() const;

  void optimize();
};

#endif // SBNB_CORE_BRANCH_AND_BOUND_CLASS_H

