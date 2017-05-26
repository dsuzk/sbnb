#include <math.h>
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"

Branching::Branching(const double float_precision) : kFloatPrecision(float_precision) {}

std::vector<IloConstraint*> Branching::Branch(IloNumArray &solutions, IloNumVarArray &variables) {

    std::vector<IloConstraint*> sub_constraints;

    int index_of_variable_to_be_branched = IndexOfNextVariableToFix(solutions);
    if (index_of_variable_to_be_branched == NO_FIXING_VALUE_FOUND) {
	return sub_constraints;
    }

    IloNumVar variable_to_be_branched = variables[index_of_variable_to_be_branched];
    double value_of_variable_to_be_branched = solutions[index_of_variable_to_be_branched];

    IloConstraint* less_than_or_equal = new IloConstraint(variable_to_be_branched <= floor(value_of_variable_to_be_branched));
    sub_constraints.insert(sub_constraints.begin(), less_than_or_equal);

    IloConstraint* greater_than_or_equal = new IloConstraint(ceil(value_of_variable_to_be_branched) <= variable_to_be_branched);
    sub_constraints.insert(sub_constraints.begin(), greater_than_or_equal);

    return sub_constraints;
}

double Branching::IsFractional(const double number) {
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
    return (fractional_part);
}
