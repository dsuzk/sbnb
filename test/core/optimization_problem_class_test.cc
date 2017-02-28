#include "gtest/gtest.h"
#include "core/optimization_problem_class.h"
#include "models/test_model_loader_class.h"

TEST(OptimizationProblem, getSolution) {
    TestModelLoader model_loader((char*) "test/models/easy_max_model_1.lp");
    OptimizationProblem problem(model_loader.cplex, model_loader.variables);

    problem.Solve();
    const IloNumArray solution = problem.GetSolution();
    ASSERT_EQ(2, solution[0]);
    ASSERT_EQ(2, solution[1]);
}

TEST(OptimizationProblem, solved) {
    TestModelLoader model_loader((char*) "test/models/easy_max_model_1.lp");
    OptimizationProblem problem(model_loader.cplex, model_loader.variables);

    problem.Solve();

    ASSERT_TRUE(problem.IsSolved());
    ASSERT_FALSE(problem.IsInfeasible());
    ASSERT_FALSE(problem.IsUnbounded());
}

TEST(OptimizationProblem, infeasible) {
    IloEnv env;
    IloModel model(env);
    IloNumVarArray variables(env);
    IloRangeArray constraints(env);

    variables.add(IloNumVar(env, 6.0, 6.0, ILOFLOAT));
    variables.add(IloNumVar(env, 6.0, 6.0, ILOFLOAT));

    model.add(IloMinimize(env, variables[0] + variables[1]));
    constraints.add(variables[0] + variables[1] <= 11);
    model.add(constraints);

    IloCplex cplex(model);
    cplex.setOut(env.getNullStream());

    OptimizationProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.IsInfeasible());
    ASSERT_FALSE(problem.IsUnbounded());
    ASSERT_FALSE(problem.IsSolved());
}

TEST(OptimizationProblem, unbounded) {
    IloEnv env;
    IloModel model(env);
    IloNumVarArray variables(env);
    IloRangeArray constraints(env);

    variables.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));
    variables.add(IloNumVar(env, 0.0, INFINITY, ILOFLOAT));

    model.add(IloMaximize(env, variables[0] + variables[1]));

    constraints.add(variables[0] + variables[1] >= 0);
    model.add(constraints);

    IloCplex cplex(model);
    cplex.setOut(env.getNullStream());

    OptimizationProblem problem(&cplex, &variables);
    problem.Solve();

    ASSERT_TRUE(problem.IsUnbounded());
    ASSERT_FALSE(problem.IsInfeasible());
    ASSERT_FALSE(problem.IsSolved());
}

TEST(OptimizationProblem, objective_value) {
    TestModelLoader model_loader((char*) "test/models/easy_max_model_1.lp");
    OptimizationProblem problem(model_loader.cplex, model_loader.variables);
    problem.Solve();

    double expected_solution_ = 10;

    ASSERT_EQ(expected_solution_, problem.GetObjectiveValue());
}

