
#include "gtest/gtest.h"
#include <node_selection/breadth_first_traversal_class.h>
#include <node_selection/node_class.h>

TEST(BreadthFirstTraversal, NextNode_Test) {

  /*
            (a)
            / \
           /   \
         (b)   (c)
        / |     | \
       /  |     |  \
     (d) (e)   (f) (g)

  */

  BreadthFirstTraversal traversal;

  OptimizationProblem *p1 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p2 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p3 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p4 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p5 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p6 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p7 = new OptimizationProblem(NULL, NULL);

  Node a(p1);
  Node b(p5);
  Node c(p2);
  Node d(p7);
  Node e(p6);
  Node f(p4);
  Node g(p3);

  traversal.AddNode(a);

  Node next = traversal.NextNode();
  OptimizationProblem *expected_content = p1;
  EXPECT_EQ(next.problem, expected_content);

  traversal.AddNode(b);
  traversal.AddNode(c);

  next = traversal.NextNode();
  expected_content = p2;
  EXPECT_EQ(next.problem, expected_content);

  traversal.AddNode(d);
  traversal.AddNode(e);

  next = traversal.NextNode();
  expected_content = p3;
  EXPECT_EQ(next.problem, expected_content);

  next = traversal.NextNode();
  expected_content = p4;
  EXPECT_EQ(next.problem, expected_content);

  next = traversal.NextNode();
  expected_content = p5;
  EXPECT_EQ(next.problem, expected_content);

  traversal.AddNode(f);
  traversal.AddNode(g);

  next = traversal.NextNode();
  expected_content = p6;
  EXPECT_EQ(next.problem, expected_content);

  next = traversal.NextNode();
  expected_content = p7;
  EXPECT_EQ(next.problem, expected_content);

}

TEST(BreadthFirstTraversal, CurrentNode_Test) {

  BreadthFirstTraversal traversal;

  OptimizationProblem *p1 = new OptimizationProblem(NULL, NULL);
  OptimizationProblem *p2 = new OptimizationProblem(NULL, NULL);

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

  OptimizationProblem *p1 = new OptimizationProblem(NULL, NULL);
  Node a(p1);

  traversal.AddNode(a);

  EXPECT_TRUE(traversal.HasNextNode());

  traversal.NextNode();

  EXPECT_FALSE(traversal.HasNextNode());

}
