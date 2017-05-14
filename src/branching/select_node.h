
#ifndef BNB_INDEX_OF_SELECT_NODE_FUNCTION_H
#define BNB_INDEX_OF_SELECT_NODE_FUNCTION_H

#include <cmath>
#include <ilcplex/ilocplex.h>
#include "branching/branching.h"




class FirstFractional : public Branching {
	using Branching::Branching;
protected:
	int IndexOfNextVariableToFix(const IloNumArray &numbers);

};

class CloseHalf : public Branching {
	using Branching::Branching;
protected:
	int IndexOfNextVariableToFix(const IloNumArray &numbers);

};

class CloseHalfExpensive : public Branching {

public:
	CloseHalfExpensive(const std::vector <double> coef_, const double float_precision = 0.000001, const double delta_=0.1);


private:
	const std::vector<double> coef;
	const double delta;


protected:
	int IndexOfNextVariableToFix(const IloNumArray &numbers);
};

#endif //BNB_INDEX_OF_FIRST_FRACTIONAL_FUNCTION_H
