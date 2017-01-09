#include "first_fractional.h"

int FirstFractional::IndexOfNextVariableToFix(const IloNumArray &numbers) {
  for (int i = 0; i < numbers.getSize(); i++) {
    if (IsFractional(numbers[i])) {
      return i;
    }
  }
  return NO_FIXING_VALUE_FOUND;
}

bool FirstFractional::IsFractional(const double number) {
  /*
   * Cplex has a feasibility tolerance to certain amount of decimal places
   * http://www.ibm.com/support/knowledgecenter/SS9UKU_12.5.0/com.ibm.cplex.zos.help/Parameters/topics/EpRHS.html
   *
   * Due to this we have to round variable solutions at that number of decimal places
   */
  int decimal_places = 1/kFloatPrecision;
  double rounded_number = round(number * decimal_places) / decimal_places;

  double fractional_part, integral_part;
  fractional_part = modf(rounded_number, &integral_part);
  return (fractional_part != 0);
}
