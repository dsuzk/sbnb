#include "select_node.h"
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"

std::vector<int> FirstFractional::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    std::vector<int> indizes;
    for (int i = 0; i < numbers.getSize(); i++) {
	if (IsFractional(numbers[i])!=0) {
	    indizes.insert(indizes.begin(),i);
	    return indizes;
	}
    }
    return indizes;
}


std::vector<int> CloseHalf::IndexOfNextVariableToFix(const IloNumArray &numbers) {
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

    std::vector<int> indizes;

    if(maxIndex!=-1) indizes.insert(indizes.begin(),maxIndex);
    return indizes;
}


CloseHalfExpensive::CloseHalfExpensive(const std::vector <double> coef_, const double float_precision, const double delta_) : coef(coef_),delta(delta_), Branching(float_precision){}

std::vector<int> CloseHalfExpensive::IndexOfNextVariableToFix(const IloNumArray &numbers) {
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

    std::vector<int> indizes;
    if(bestIndex!=-1) indizes.insert(indizes.begin(),bestIndex);
    else if(indexIgnoringDelta!=-1) indizes.insert(indizes.begin(),bestIndex);
    return indizes;
}

std::vector<int> AllFractional::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    std::vector<int> indizes;
    for (int i = 0; i < numbers.getSize(); i++) {
	if (IsFractional(numbers[i])!=0) {
	    indizes.insert(indizes.end(),i);
	}
    }
    return indizes;
}
