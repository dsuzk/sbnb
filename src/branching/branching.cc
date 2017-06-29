#include <math.h>
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"

Branching::Branching(const double float_precision) : kFloatPrecision(float_precision) {}

std::vector<IloConstraint*> Branching::Branch(IloNumArray &solutions, IloNumVarArray &variables) {

    std::vector<IloConstraint*> sub_constraints;

    std::vector<int> indizes_of_variables_to_be_branched = IndexOfNextVariableToFix(solutions);
    if (indizes_of_variables_to_be_branched.empty()) {
	return sub_constraints;
    }
//    std::cout<<indizes_of_variables_to_be_branched.size()<<std::endl;
    for(int i=0;i<indizes_of_variables_to_be_branched.size();i++){
	IloNumVar variable_to_be_branched = variables[indizes_of_variables_to_be_branched[i]];
	double value_of_variable_to_be_branched = solutions[indizes_of_variables_to_be_branched[i]];

	IloConstraint* less_than_or_equal = new IloConstraint(variable_to_be_branched <= floor(value_of_variable_to_be_branched));
	sub_constraints.insert(sub_constraints.end(), less_than_or_equal);

	IloConstraint* greater_than_or_equal = new IloConstraint(ceil(value_of_variable_to_be_branched) <= variable_to_be_branched);
	sub_constraints.insert(sub_constraints.end(), greater_than_or_equal);
    }

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
