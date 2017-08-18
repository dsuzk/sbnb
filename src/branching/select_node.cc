#include "select_node.h"
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"
#include <queue>

int FirstFractional::IndexOfNextVariableToFix(const IloNumArray &numbers) {
    int FracVar = -1;
    for (int i = 0; i < numbers.getSize(); i++) {
	if (IsFractional(numbers[i])!=0) {
	    FracVar = i;
	    break;
	}
    }
    return FracVar;
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
    return maxIndex;
}


CloseHalfExpensive::CloseHalfExpensive(IloNumVarArray vars, const std::vector <double> coef_, const double float_precision, const double delta_) : coef(coef_),delta(delta_), Branching(vars, float_precision){}

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
		}}
	    else{
		if (std::abs(coef[i])>maxValueIgnoringDelta){
		    maxValueIgnoringDelta=std::abs(coef[i]);
		    indexIgnoringDelta=i;
		}
	    }
	}
    }

    int RetVar = -1;
    if(bestIndex!=-1) RetVar=bestIndex;
    else RetVar=indexIgnoringDelta;
    return RetVar;
}


Sol::Sol(int index, double frac):variableIndex(index),fractionalComp(frac){}

bool Sol::operator()(Sol* sol1, Sol* sol2) const{
    return sol1->fractionalComp > sol2->fractionalComp;
}



StrongBranching::StrongBranching(IloNumVarArray vars, IloCplex* cplex, int nBranchStart, double alpha, const double float_precision):cplex_(cplex),nBranch(nBranchStart),nBranchStart(nBranchStart), alpha(alpha),Branching(vars, float_precision){};

void StrongBranching::reduceNBranch(int level){
    nBranch=std::max(nBranchStart-level,1);
}

int StrongBranching::IndexOfNextVariableToFix(const IloNumArray &numbers) {

    // if nBranch==0(nBranch<node level) use first fractional
    if(nBranch<2){
	int FracVar = -1;
	for (int i = 0; i < numbers.getSize(); i++) {
	    if (IsFractional(numbers[i])!=0) {
		FracVar = i;
		break;
	    }
	}
	return FracVar;
    }


    // construct priority_queue with candidates

    bool solved;
    IloNumArray solutionTemp;

    std::priority_queue<Sol*> indices;
    double temp;
    for (int i = 0; i < numbers.getSize(); i++) {
	temp=IsFractional(numbers[i]);
	if (temp!=0) {
	    temp=std::abs(temp-0.5);
	    indices.push(new Sol(i,temp));
	}
    }


    // initialize some necessary values
    double minVal;
    double maxVal;

    double temp0, temp1, temp2, strongestValue;
    int strongestIndex = -1;

    bool maxProb=cplex_->getObjective().getSense() == IloObjective::Sense::Maximize;
    if (maxProb)
	strongestValue=IloInfinity;
    else
	strongestValue=-IloInfinity;

    int index;

    int ih=indices.size();
    int counter=0;
    int f=std::min(nBranch,int(indices.size()));

    // create and solve pseudonodes for every index and choose the best

    std::vector<IloConstraint*> sub_constraints;
    for (int i = 0; i<f; i++){
	counter++;
	index=indices.top()->variableIndex;
	generateConstraints(numbers, index, &sub_constraints);
	indices.pop();

	cplex_->getModel().add(*(sub_constraints[0]));
	solved=cplex_->solve();
	solutionTemp = IloNumArray(cplex_->getEnv());
	if (solved){
	    cplex_->getValues(solutionTemp, vars_);
	    temp0=cplex_->getObjValue();

	}
	cplex_->getModel().remove(*sub_constraints[0]);
	cplex_->getModel().add(*sub_constraints[1]);
	solved=cplex_->solve();
	solutionTemp = IloNumArray(cplex_->getEnv());
	if (solved){
	    cplex_->getValues(solutionTemp, vars_);
	    temp1=cplex_->getObjValue();
	}
	cplex_->getModel().remove(*sub_constraints[1]);

	sub_constraints.clear();

	minVal=std::min(temp0,temp1);
	maxVal=std::max(temp0,temp1);
	
	// weight the objective values by alpha
	if(maxProb){
	    temp2=minVal*(1-alpha)+maxVal*alpha;
	}else{
	    temp2=minVal*alpha+maxVal*(1-alpha);
	}


	if (maxProb && temp2 < strongestValue){
	    strongestValue = temp2;
	    strongestIndex=index;
	}else if(!maxProb && temp2 > strongestValue){
	    strongestValue = temp2;
	    strongestIndex=index;
	}

    }
    return strongestIndex;
}
