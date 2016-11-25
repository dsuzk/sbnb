
#include "gtest/gtest.h"
#include <branching/first_fractional.h>

TEST(IndexOfFirstFractional, GetFirsFractional_Test) {

  const double numbers[] = { 1.0, 2.0, 3.4, 5.0, 6.0 };
  size_t length = sizeof(numbers) / sizeof(numbers[0]);

  int expected_index = 2;
  int actual_index = IndexOfFirstFractional(numbers, length);
  EXPECT_EQ(actual_index, expected_index);

}

TEST(IndexOfFirstFractional, NoFractionalFound_Test) {

  double numbers[] = { 1.0, 2.0, 3.0, 4.0, 5.0 };
  size_t length = sizeof(numbers) / sizeof(numbers[0]);

  int expected_index = NO_FRACTIONAL_FOUND;
  int actual_index = IndexOfFirstFractional(numbers, length);
  EXPECT_EQ(actual_index, expected_index);

}

TEST(IndexOfFirstFractional, EmptyArray_Test) {

  const double numbers[] = {};
  size_t length = sizeof(numbers) / sizeof(numbers[0]);

  int expected_index = NO_FRACTIONAL_FOUND;
  int actual_index = IndexOfFirstFractional(numbers, length);
  EXPECT_EQ(actual_index, expected_index);

}
