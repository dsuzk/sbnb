#ifndef SBNB_CORE_BRANCH_AND_BOUND_H
#define SBNB_CORE_BRANCH_AND_BOUND_H

#include <ilcplex/ilocplex.h>
#include "node_selection/best_first_traversal.h"
#include "node_selection/breadth_first_traversal.h"
#include "node_selection/depth_first_traversal.h"
#include "../branching/select_node.h"
#include "statistics/statistics.h"

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
    IloNumArray best_solution_;
    double global_primal_bound_;

    int number_nodes_ = 0;
    Statistics statistics_;

    bool console_output_ = false;

    const bool IsBetterObjectiveValue(double objective_value) const;
    void InstallFixings( Node* previous_node,  Node* current_node) const;
    void GenerateSubproblems(std::vector<IloConstraint*>&, Node*, NodeSelection&);
    void GenerateSubproblems2(std::vector<IloConstraint*>&, Node*, NodeSelection&);

public:
    //default: first fractional; depth first traversal
    BranchAndBound(IloModel*, IloNumVarArray*, Branching* = new FirstFractional(),
	    NodeSelection* = new DepthFirstTraversal(), bool = false);

    const IloNumVarArray& GetVariables() const;
    const IloModel& GetModel() const;
    const bool IsMaximizationProblem() const;
    const double GetGlobalPrimalBound() const;
    const IloNumArray& GetBestSolution() const;
    const Statistics& GetStatistics() const;

    void optimize();
};

#endif // SBNB_CORE_BRANCH_AND_BOUND_H

