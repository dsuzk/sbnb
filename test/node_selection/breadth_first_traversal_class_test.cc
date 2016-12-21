
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

  BreadthFirstTraversal<int> traversal;

  Node<int> a(1);
  Node<int> b(2);
  Node<int> c(3);
  Node<int> d(4);
  Node<int> e(5);
  Node<int> f(6);
  Node<int> g(7);

  traversal.AddNode(&a);

  Node<int> *next = traversal.NextNode();
  int expected_content = 1;
  EXPECT_EQ(next->content, expected_content);

  traversal.AddNode(&b);
  traversal.AddNode(&c);

  next = traversal.NextNode();
  expected_content = 2;
  EXPECT_EQ(next->content, expected_content);

  traversal.AddNode(&d);
  traversal.AddNode(&e);

  next = traversal.NextNode();
  expected_content = 3;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.NextNode();
  expected_content = 4;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.NextNode();
  expected_content = 5;
  EXPECT_EQ(next->content, expected_content);

  traversal.AddNode(&f);
  traversal.AddNode(&g);

  next = traversal.NextNode();
  expected_content = 6;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.NextNode();
  expected_content = 7;
  EXPECT_EQ(next->content, expected_content);

}

TEST(BreadthFirstTraversal, CurrentNode_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(1);
  Node<int> b(2);

  traversal.AddNode(&a);
  traversal.AddNode(&b);

  Node<int> *current = traversal.CurrentNode();
  int expected_content = 1;
  EXPECT_EQ(current->content, expected_content);

}

TEST(BreadthFirstTraversal, HasNextNode_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(0);
  traversal.AddNode(&a);

  EXPECT_TRUE(traversal.HasNextNode());

  traversal.NextNode();

  EXPECT_FALSE(traversal.HasNextNode());

}
