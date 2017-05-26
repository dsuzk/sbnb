#ifndef SBNB_NODE_SELECTION_NODE_H_
#define SBNB_NODE_SELECTION_NODE_H_

#include <ilcplex/ilocplex.h>

class Node {
public:

    Node(IloCplex*, IloNumVarArray*, bool console_output = false);
    Node(IloCplex*, IloNumVarArray*, IloConstraint*,Node* parent, int level, bool console_output = false);

    void InstallFixing() ;
    void RemoveFixing() ;
    void FreeFixing();
    void Solve();
    const IloNumArray& GetSolution() const;
    IloConstraint& GetFixing() const;

    bool IsSolved() const;
    bool IsInfeasible() const;
    bool IsUnbounded() const;
    bool HasFixingInstalled() const;

    double GetObjectiveValue() const;



    void SetFirstChild(Node*);
    void SetNextSibling(Node*);
    Node* GetFirstChild() const;
    Node* GetParent() const;
    Node* GetNextSibling() const;
    const int GetLevel() const;

    void Fathom();
    const bool IsFathomed() const;


private:
    IloCplex* cplex_;
    IloNumVarArray* variables_;
    IloNumArray solution_;
    IloConstraint* fixing_ = 0;

    IloAlgorithm::Status cplex_status_;
    bool solved_ = false;
    bool has_fixing_installed = false;
    double objective_value_;

    bool console_output_ = false;



    Node* parent_ = NULL;
    Node* sibling_ = NULL;
    Node* first_child_ = NULL;

    int level_ = 0;
    bool fathomed_ = false;

    const bool SiblingFathomed() const;
    const bool IsRoot() const;
};

#endif //SBNB_NODE_SELECTION_NODE_H_
