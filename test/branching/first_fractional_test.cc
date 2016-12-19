
#include "gtest/gtest.h"
#include <ilcplex/ilocplex.h>
#include <branching/first_fractional.h>

using namespace std;

const double FLOAT_PRECISION = 0.000001;

TEST(IndexOfFirstFractional, GetFirsFractional_Test) {

  IloEnv environment;
  IloNumArray numbers(environment);
  numbers.add(1.0000001);
  numbers.add(2.000001);
  numbers.add(3.4);
  numbers.add(5.0);
  numbers.add(6.0);

  int expected_index = 1;
  int actual_index = IndexOfFirstFractional(numbers, FLOAT_PRECISION);
  EXPECT_EQ(actual_index, expected_index);

}

TEST(IndexOfFirstFractional, NoFractionalFound_Test) {

  IloEnv environment;
  IloNumArray numbers(environment);
  numbers.add(1.0);
  numbers.add(2.0);
  numbers.add(3.0);
  numbers.add(4.0);
  numbers.add(5.0);

  int expected_index = NO_FRACTIONAL_FOUND;
  int actual_index = IndexOfFirstFractional(numbers, FLOAT_PRECISION);
  EXPECT_EQ(actual_index, expected_index);

}

TEST(IndexOfFirstFractional, EmptyArray_Test) {

  IloEnv environment;
  IloNumArray numbers(environment);

  int expected_index = NO_FRACTIONAL_FOUND;
  int actual_index = IndexOfFirstFractional(numbers, FLOAT_PRECISION);
  EXPECT_EQ(actual_index, expected_index);

}
