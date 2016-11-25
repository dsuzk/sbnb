
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

  traversal.add_node(a);

  Node<int> next = traversal.next_node();
  int expected_content = 1;
  EXPECT_EQ(next.content, expected_content);

  traversal.add_node(b);
  traversal.add_node(c);

  next = traversal.next_node();
  expected_content = 2;
  EXPECT_EQ(next.content, expected_content);

  traversal.add_node(d);
  traversal.add_node(e);

  next = traversal.next_node();
  expected_content = 3;
  EXPECT_EQ(next.content, expected_content);

  next = traversal.next_node();
  expected_content = 4;
  EXPECT_EQ(next.content, expected_content);

  next = traversal.next_node();
  expected_content = 5;
  EXPECT_EQ(next.content, expected_content);

  traversal.add_node(f);
  traversal.add_node(g);

  next = traversal.next_node();
  expected_content = 6;
  EXPECT_EQ(next.content, expected_content);

  next = traversal.next_node();
  expected_content = 7;
  EXPECT_EQ(next.content, expected_content);

}

TEST(BreadthFirstTraversal, current_node_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(1);
  Node<int> b(2);

  traversal.add_node(a);
  traversal.add_node(b);

  Node<int> current = traversal.current_node();
  int expected_content = 1;
  EXPECT_EQ(current.content, expected_content);

}

TEST(BreadthFirstTraversal, has_next_node_Test) {

  BreadthFirstTraversal<int> traversal;

  Node<int> a(0);
  traversal.add_node(a);

  EXPECT_TRUE(traversal.has_next_node());

  traversal.next_node();

  EXPECT_FALSE(traversal.has_next_node());

}