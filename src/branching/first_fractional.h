
#ifndef BNB_INDEX_OF_FIRST_FRACTIONAL_FUNCTION_H
#define BNB_INDEX_OF_FIRST_FRACTIONAL_FUNCTION_H

#include <ilcplex/ilocplex.h>
#include "branching/branching.h"

class FirstFractional :public Branching {
  using Branching::Branching; 

private:
  virtual int IndexOfNextVariableToFix(const IloNumArray &numbers);
  bool IsFractional(const double number);
};

#endif //BNB_INDEX_OF_FIRST_FRACTIONAL_FUNCTION_H
