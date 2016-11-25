
#include <math.h>
#include "first_fractional.h"

bool IsFractional(const double number) {
  double fractional_part, integral_part;
  fractional_part = modf(number, &integral_part);
  return (fractional_part != 0);
}

int IndexOfFirstFractional(const double numbers[], size_t length) {
  for (int i = 0; i < length; i++) {
    if (IsFractional(numbers[i])) {
      return i;
    }
  }
  return NO_FRACTIONAL_FOUND;
}

