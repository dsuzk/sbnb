
#include <iostream>
#include <vector>
#include "branch_and_bound_class.h"
#include "branching/branching.h"
#include "node_selection/node_selection_interface.h"
#include "node_selection/depth_first_traversal_class.h"
#include "core/optimization_problem_class.h"

BranchAndBound::BranchAndBound(IloModel* model, IloNumVarArray* variables)
  : model_(model),
    variables_(variables),
    best_solution_(IloNumArray(model_->getEnv())),
    cplex_(IloCplex(*model)),
    global_dual_bound_(0.0),
    global_primal_bound_(0.0) {

  cplex_.setOut(model_->getEnv().getNullStream());
}

/*
 * @ file
 *
 * 0.generate root problem and add to node selection
 * while (NodeSelection has next node) {
 *    1. get next node from NodeSelection
 *    2. solve OptimizationProblem of Node and find optimal solution z for variables x*
 *    3. if infeasible or unbounded, process next node (skip loop / break)
 *    4. if x* integer set global_lower_bound LB to max{LB, z}, process next node 
 *    5. if z <= LB, process next node
 *    6.  - get (next) variable to fixate from BranchingRule
 *        - generate two (sub-) OptimizationProblems with Constraints from BranchingRule
 *        - add new Problems to NodeSelection
 * }
 * TODO: Where to remove contraints from model
 */
void BranchAndBound::optimize() {

  Branching branching(FIRST_FRACTIONAL);
  DepthFirstTraversal<OptimizationProblem*> node_selection;

  OptimizationProblem problem(&cplex_, variables_);
  Node<OptimizationProblem*> root(&problem);
  node_selection.SetNextNode(&root);

  while (node_selection.HasNextNode()) {

    Node<OptimizationProblem*> current_node = *node_selection.NextNode();
    OptimizationProblem current_problem = *current_node.content;

    current_problem.Solve();

    if (current_problem.IsInfeasible() || current_problem.IsUnbounded()) {
      continue;
    }

    IloNumArray current_solution_variables = current_problem.GetSolution();
    std::vector<IloConstraint*> branched_constraints = *branching.Branch(current_solution_variables, *variables_);

    double objective_value = current_problem.GetObjectiveValue();
    cerr << "OBJECTIVE VALUE:------> " << objective_value << endl;

    // solution has only integer values
    if (branched_constraints.size() == 0) {
      if (objective_value > global_dual_bound_) {
        global_dual_bound_ = objective_value;
        best_solution_ = current_solution_variables;
      }
      continue;
    }
    cerr << "DUAL BOUND:------> " << global_dual_bound_ << endl;

    if (objective_value <= global_dual_bound_) {
      continue;
    }

    //  - get (next) variable to fixate from BranchingRule
    //  - generate two (sub-) OptimizationProblems with Constraints from BranchingRule
    //  - add new Problems to NodeSelection

    for (auto constraint : branched_constraints) {
      OptimizationProblem *sub_problem = new OptimizationProblem(&cplex_, variables_, constraint);
      sub_problem->AddFixings(current_problem.GetFixings());
      Node<OptimizationProblem*> *sub_problem_node = new Node<OptimizationProblem*>(sub_problem);
      node_selection.SetNextNode(sub_problem_node);
    }
  }
}

const IloNumArray &BranchAndBound::GetBestSolution() const {
  return best_solution_;
}
