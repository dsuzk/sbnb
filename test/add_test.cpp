#include "gtest/gtest.h"
#include "add.h"

TEST(AddTest, negatives) {
  EXPECT_EQ(-1, add(3,-4));
}
