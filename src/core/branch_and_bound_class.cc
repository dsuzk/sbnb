#include "branch_and_bound_class.h"
#include "node_selection/bnb_node_selection_interface.h"
#include "node_selection/depth_first_traversal_class.h"
#include "core/bnb_problem_class.h"

BranchAndBound::BranchAndBound(IloModel* model, IloNumVarArray* variables) {
  model_ = model;
  variables_ = variables;

  cplex_ = IloCplex(*model_);
}

/*
 * @ file
 *
 * 0.generate root problem and add to node selection
 * while (NodeSelection has next node) {
 *    1. get next node from NodeSelection
 *    2. solve BnBProblem of Node and find optimal solution z for variables x*
 *    3. if infeasible or unbounded, process next node (skip loop / break)
 *    4. if x* integer set global_lower_bound LB to max{LB, z}, process next node 
 *    5. if z <= LB, process next node
 *    6.  - get (next) variable to fixate from BranchingRule
 *        - generate two (sub-) BnBProblems with Constraints from BranchingRule
 *        - add new Problems to NodeSelection
 * }
 * TODO: Where to remove contraints from model
 */
void BranchAndBound::optimize() {
  /*
   * 0.generate root problem and add to node selection
   */
  BnBProblem problem(&cplex_, variables_);
  Node<BnBProblem*> root(&problem);

  DepthFirstTraversal<BnBProblem*> node_selection;
  node_selection.SetNextNode(&root);

  while (node_selection.HasNextNode()) {
    //1. get next node from NodeSelection
    Node<BnBProblem*> actual_node = *node_selection.next_node();
    BnBProblem actual_problem = *actual_node.content;

    // 2. solve BnBProblem of Node and find optimal solution z for variables x*/
    // IloNumArray actual_solution = actual_problem->GetSolution();
    // TODO: find objective value/solution 'z'

    // 3. if infeasible or unbounded process next node
    // if (actual_problem->infeasible() || actual_problem->unbounded()) {
    //   continue;
    // }

    // 4. if actual_solution integer values, set global_lower_bound LB to max{LB, z} and process next node;

    // 5. if z <= LB and process next node

    /*   6.  - get (next) variable to fixate from BranchingRule
     *        - generate two (sub-) BnBProblems with Constraints from BranchingRule
     *        - add new Problems to NodeSelection
     */
  }
}

