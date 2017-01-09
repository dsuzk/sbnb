
#include "gtest/gtest.h"
#include <node_selection/breadth_first_traversal_class.h>
#include <test_models/test_model_loader_class.h>
#include <node_selection/node_class.h>

TEST(BreadthFirstTraversal, NextNode_Test) {

  BreadthFirstTraversal traversal;

  TestModelLoader testModelLoader("test/test_models/variable_test_model.lp");

  OptimizationProblem *p1 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);
  OptimizationProblem *p2 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);
  OptimizationProblem *p3 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);

  Node a(p3);
  Node b(p2);
  Node c(p1);

  traversal.AddNode(a);
  traversal.AddNode(b);
  traversal.AddNode(c);

  Node next = traversal.NextNode();
  OptimizationProblem *expected_content = p3;
  EXPECT_EQ(next.problem, expected_content);



  next = traversal.NextNode();
  expected_content = p2;
  EXPECT_EQ(next.problem, expected_content);


  next = traversal.NextNode();
  expected_content = p1;
  EXPECT_EQ(next.problem, expected_content);
}

TEST(BreadthFirstTraversal, CurrentNode_Test) {

  BreadthFirstTraversal traversal;

  TestModelLoader testModelLoader("test/test_models/variable_test_model.lp");

  OptimizationProblem *p1 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);
  OptimizationProblem *p2 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);

  Node a(p1);
  Node b(p2);

  traversal.AddNode(a);
  traversal.AddNode(b);

  Node current = traversal.CurrentNode();
  OptimizationProblem *expected_content = p1;
  EXPECT_EQ(current.problem, expected_content);

}

TEST(BreadthFirstTraversal, HasNextNode_Test) {

  BreadthFirstTraversal traversal;

  TestModelLoader testModelLoader("test/test_models/variable_test_model.lp");

  OptimizationProblem *p1 = new OptimizationProblem(testModelLoader.cplex, testModelLoader.variables);
  Node a(p1);

  traversal.AddNode(a);

  EXPECT_TRUE(traversal.HasNextNode());

  traversal.NextNode();

  EXPECT_FALSE(traversal.HasNextNode());

}
