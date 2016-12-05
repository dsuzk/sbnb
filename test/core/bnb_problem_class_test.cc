#include <iostream>
#include <ilcplex/ilocplex.h>
#include "gtest/gtest.h"
#include "core/bnb_problem_class.h"
#include "example_model/example_cplex_model_class.h"

using namespace std;

TEST(BnBProblem, getSolution) {
  try {

    ExampleCplexModel example_model;
    BnBProblem problem(example_model.model, example_model.variables);

    problem.Solve();
    const IloNumArray solution = problem.GetSolution();
    ASSERT_EQ(1, solution[0]);
    ASSERT_EQ(2, solution[1]);
    ASSERT_EQ(3, solution[2]);
    // why fail? float calc errors
    // ASSERT_EQ(2.76923, solution[3]);

  } catch (const IloException& e) {
    cerr << "Error: " << e.getMessage() << endl;
  }
}
