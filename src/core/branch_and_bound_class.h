#ifndef _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_
#define _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_

#include <ilcplex/ilocplex.h>
#include "node_selection/node_class.h"
#include "node_selection/node_selection_class.h"
#include "core/optimization_problem_class.h"

/**
 * @brief The main entry point for the branch and bound framework
 */
class BranchAndBound {
 private:
  IloModel* model_;
  IloNumVarArray* variables_;

  IloCplex cplex_;

  double global_primal_bound_;

  IloNumArray best_solution_;

  const bool IsNewBestObjectiveValue(double objective_value) const;
  void GenerateSubproblems(std::vector<IloConstraint>&, OptimizationProblem&, NodeSelection<OptimizationProblem*>&);

 public:
  BranchAndBound(IloModel*, IloNumVarArray*);

  const IloNumVarArray& GetVariables() const;
  const IloModel& GetModel() const;

  const bool IsMaximizationProblem() const;

  double GetGlobalPrimalBound() const;

  const IloNumArray& GetBestSolution() const;

  void optimize();
};

#endif // _SBNB_CORE_BRANCH_AND_BOUND_CLASS_H_

