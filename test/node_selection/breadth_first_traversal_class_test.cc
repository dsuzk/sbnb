
#include "gtest/gtest.h"
#include <node_selection/breadth_first_traversal_class.h>
#include <node_selection/node_class.h>

TEST(BreadthFirstTraversal, next_node_Test) {

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

  traversal.SetNextNode(&a);

  Node<int> *next = traversal.next_node();
  int expected_content = 1;
  EXPECT_EQ(next->content, expected_content);

  traversal.SetNextNode(&b);
  traversal.SetNextNode(&c);

  next = traversal.next_node();
  expected_content = 2;
  EXPECT_EQ(next->content, expected_content);

  traversal.SetNextNode(&d);
  traversal.SetNextNode(&e);

  next = traversal.next_node();
  expected_content = 3;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.next_node();
  expected_content = 4;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.next_node();
  expected_content = 5;
  EXPECT_EQ(next->content, expected_content);

  traversal.SetNextNode(&f);
  traversal.SetNextNode(&g);

  next = traversal.next_node();
  expected_content = 6;
  EXPECT_EQ(next->content, expected_content);

  next = traversal.next_node();
  expected_content = 7;
  EXPECT_EQ(next->content, expected_content);

}

TEST(BreadthFirstTraversal, current_node_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(1);
  Node<int> b(2);

  traversal.SetNextNode(&a);
  traversal.SetNextNode(&b);

  Node<int> *current = traversal.current_node();
  int expected_content = 1;
  EXPECT_EQ(current->content, expected_content);

}

TEST(BreadthFirstTraversal, HasNextNode_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(0);
  traversal.SetNextNode(&a);

  EXPECT_TRUE(traversal.HasNextNode());

  traversal.next_node();

  EXPECT_FALSE(traversal.HasNextNode());

}
