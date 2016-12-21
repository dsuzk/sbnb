#include <vector>
#include "branch_and_bound_class.h"
#include "branching/branching.h"

BranchAndBound::BranchAndBound(IloModel *model, IloNumVarArray *variables)
    : model_(model),
      variables_(variables),
      best_solution_(IloNumArray(model_->getEnv())),
      cplex_(IloCplex(*model)),
      global_primal_bound_(0.0) {

  if (IsMaximizationProblem()) {
    global_primal_bound_ = -IloInfinity;
  } else {
    global_primal_bound_ = IloInfinity;
  }

  // relaxate variables
  model_->add(IloConversion(cplex_.getEnv(), *variables_, ILOFLOAT));

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
 */
void BranchAndBound::optimize() {
  OptimizationProblem problem(&cplex_, variables_);
  Node<OptimizationProblem *> root(&problem);
  Branching branching(FIRST_FRACTIONAL);
  NodeSelection<OptimizationProblem *> node_selection(DEPTH_FIRST);
  std::vector<IloConstraint> branched_constraints;
  IloNumArray current_solution_variables;

  node_selection.AddNode(&root);

  while (node_selection.HasNextNode()) {
    Node<OptimizationProblem *> current_node = *node_selection.NextNode();
    OptimizationProblem current_problem = *current_node.content;
    current_problem.Solve();

    if (current_problem.IsInfeasible() || current_problem.IsUnbounded()) {
      continue;
    }

    double objective_value = current_problem.GetObjectiveValue();
    if (!IsNewBestObjectiveValue(objective_value)) {
      continue;
    }

    // cplex feasibility tolerance as float precision
    const double float_precision = cplex_.getParam(IloCplex::EpRHS);
    current_solution_variables = current_problem.GetSolution();
    branched_constraints = branching.Branch(current_solution_variables, *variables_, float_precision);

    if (branched_constraints.size() > 0) { // sub-problem has non integer solution
      GenerateSubproblems(branched_constraints, current_problem, node_selection);
    } else {
      global_primal_bound_ = objective_value;
      best_solution_ = current_solution_variables;
    }
  }
}

void BranchAndBound::GenerateSubproblems(std::vector<IloConstraint> &branched_constraints,
                                         OptimizationProblem &current_problem,
                                         NodeSelection<OptimizationProblem *> &node_selection) {
  for (auto constraint : branched_constraints) {
    OptimizationProblem *sub_problem = new OptimizationProblem(&cplex_, variables_, &constraint);
    sub_problem->AddFixings(current_problem.GetFixings());
    Node<OptimizationProblem *> *sub_problem_node = new Node<OptimizationProblem *>(sub_problem);
    node_selection.AddNode(sub_problem_node);
  }
}

const IloNumArray &BranchAndBound::GetBestSolution() const {
  return best_solution_;
}

double BranchAndBound::GetGlobalPrimalBound() const {
  return global_primal_bound_;
}

const bool BranchAndBound::IsNewBestObjectiveValue(double objective_value) const {
  if (IsMaximizationProblem()) {
    return (objective_value > global_primal_bound_);
  } else {
    return (objective_value < global_primal_bound_);
  }
}

const bool BranchAndBound::IsMaximizationProblem() const {
  return cplex_.getObjective().getSense() == IloObjective::Sense::Maximize;
}
