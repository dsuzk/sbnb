
#include <math.h>
#include <ilcplex/ilocplex.h>
#include "first_fractional.h"

bool IsFractional(const double number) {
  double fractional_part, integral_part;
  fractional_part = modf(number, &integral_part);
  return (fractional_part != 0);
}

int IndexOfFirstFractional(const IloNumArray &numbers) {
  for (int i = 0; i < numbers.getSize(); i++) {
    if (IsFractional(numbers[i])) {
      return i;
    }
  }
  return NO_FRACTIONAL_FOUND;
}

