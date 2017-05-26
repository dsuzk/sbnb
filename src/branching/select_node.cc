#include "select_node.h"
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"

int FirstFractional::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    for (int i = 0; i < numbers.getSize(); i++) {
	if (IsFractional(numbers[i])!=0) {

	    return i;
	}
    }
    return NO_FIXING_VALUE_FOUND;
}


int CloseHalf::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    int maxIndex=-1;
    double bestValue=1,temp;

    for (int i = 0; i < numbers.getSize(); i++) {
	temp=IsFractional(numbers[i]);
	if (temp!=0) {
	    temp=std::abs(temp-0.5);
	    if (temp<bestValue){

		bestValue=temp;
		maxIndex=i;
	    }
	}
    }

    if(maxIndex!=-1) return maxIndex;
    return NO_FIXING_VALUE_FOUND;
}


CloseHalfExpensive::CloseHalfExpensive(const std::vector <double> coef_, const double float_precision, const double delta_) : coef(coef_),delta(delta_), Branching(float_precision){}

int CloseHalfExpensive::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    int bestIndex=-1,indexIgnoringDelta=-1;
    double maxValue=-1,maxValueIgnoringDelta=-1,temp;

    for (int i = 0; i < numbers.getSize(); i++) {
	temp=IsFractional(numbers[i]);
	if (temp!=0){
	    if (std::abs(temp-0.5)<delta) {
		if (std::abs(coef[i])>maxValue){
		    maxValue=std::abs(coef[i]);
		    bestIndex=i;
		}
	    }else{
		if (std::abs(coef[i])>maxValueIgnoringDelta){
		    maxValueIgnoringDelta=std::abs(coef[i]);
		    indexIgnoringDelta=i;
		}
		//				if (std::abs(temp-0.5)>maxValueIgnoringDelta){
		//					maxValueIgnoringDelta=std::abs(temp-0.5);
		//					indexIgnoringDelta=i;
		//				}
	    }
	}
    }
    if(bestIndex!=-1) return bestIndex;
    if(indexIgnoringDelta!=-1) return indexIgnoringDelta;
    return NO_FIXING_VALUE_FOUND;
}
