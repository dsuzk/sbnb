\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj: 5 x1 + 1 x2 + 1 x3 + 2 x4 + 3 x5
Subject To
 c1: 0 x1 + 1 x2 - 5 x3 + 1 x4 + 2 x5 >= -2
 c2: 5 x1 - 1 x2 + 0 x3 + 0 x4 + 1 x5 >= 7
 c3: 1 x1 + 1 x2 + 6 x3 + 1 x4 + 0 x5 >= 4
End
