\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj: 43 x7t8 + 40 x8t5 + 8 x5t9 + 33 x9t0 + 48 x0t6 + 38 x6t4 + 46 x4t2
      + 13 x2t1 + 17 x1t3 + 27 x2t5 + 39 x0t1 + 48 x6t9 + 30 x2t3 + 9 x2t8
      + 36 x4t8 + 19 x3t5 + 28 x5t7 + 19 x1t5 + 45 x1t4 + 30 x8t9 + 40 x0t3
      + 12 x3t4 + 15 x6t8 + 6 x3t6 + 47 x0t2 + 13 x4t7 + 18 x3t9 + 11 x2t6
      + 27 x5t6 + 35 x7t9 + 5 x3t8 + 18 x3t7 + 41 x2t9 + 20 x4t5 + 19 x1t6
      + 18 x1t8 + 45 x0t8 + 44 x4t9 + 28 x0t7 + 28 x0t4 + 23 x6t7 + 26 x2t7
      + 9 x1t7 + 22 x0t5 + 17 x1t9 + x46
Subject To
 BAL2T9AT0:  - f2t9i9j0 + f2t9i0j9 + f2t9i0j6 - f2t9i6j0 + f2t9i0j1 - f2t9i1j0
             + f2t9i0j3 - f2t9i3j0 + f2t9i0j2 - f2t9i2j0 + f2t9i0j8 - f2t9i8j0
             + f2t9i0j7 - f2t9i7j0 + f2t9i0j4 - f2t9i4j0 + f2t9i0j5 - f2t9i5j0
              = 0
 BAL2T9AT1:  - f2t9i0j1 + f2t9i1j0 - f2t9i2j1 + f2t9i1j2 + f2t9i1j3 - f2t9i3j1
             + f2t9i1j5 - f2t9i5j1 + f2t9i1j4 - f2t9i4j1 + f2t9i1j6 - f2t9i6j1
             + f2t9i1j8 - f2t9i8j1 + f2t9i1j7 - f2t9i7j1 + f2t9i1j9 - f2t9i9j1
              = 0
 BAL2T9AT2:  - f2t9i0j2 + f2t9i2j0 + f2t9i2j1 - f2t9i1j2 - f2t9i4j2 + f2t9i2j4
             + f2t9i2j5 - f2t9i5j2 + f2t9i2j3 - f2t9i3j2 + f2t9i2j8 - f2t9i8j2
             + f2t9i2j6 - f2t9i6j2 + f2t9i2j9 - f2t9i9j2 + f2t9i2j7 - f2t9i7j2
              = 1
 BAL2T9AT3:  - f2t9i0j3 + f2t9i3j0 - f2t9i1j3 + f2t9i3j1 - f2t9i2j3 + f2t9i3j2
             + f2t9i3j5 - f2t9i5j3 + f2t9i3j4 - f2t9i4j3 + f2t9i3j6 - f2t9i6j3
             + f2t9i3j9 - f2t9i9j3 + f2t9i3j8 - f2t9i8j3 + f2t9i3j7 - f2t9i7j3
              = 0
 BAL2T9AT4:  - f2t9i0j4 + f2t9i4j0 - f2t9i1j4 + f2t9i4j1 + f2t9i4j2 - f2t9i2j4
             - f2t9i3j4 + f2t9i4j3 - f2t9i6j4 + f2t9i4j6 + f2t9i4j8 - f2t9i8j4
             + f2t9i4j7 - f2t9i7j4 + f2t9i4j5 - f2t9i5j4 + f2t9i4j9 - f2t9i9j4
              = 0
 BAL2T9AT5:  - f2t9i0j5 + f2t9i5j0 - f2t9i1j5 + f2t9i5j1 - f2t9i2j5 + f2t9i5j2
             - f2t9i3j5 + f2t9i5j3 - f2t9i4j5 + f2t9i5j4 - f2t9i8j5 + f2t9i5j8
             + f2t9i5j9 - f2t9i9j5 + f2t9i5j7 - f2t9i7j5 + f2t9i5j6 - f2t9i6j5
              = 0
 BAL2T9AT6:  - f2t9i0j6 + f2t9i6j0 - f2t9i1j6 + f2t9i6j1 - f2t9i2j6 + f2t9i6j2
             - f2t9i3j6 + f2t9i6j3 + f2t9i6j4 - f2t9i4j6 - f2t9i5j6 + f2t9i6j5
             + f2t9i6j9 - f2t9i9j6 + f2t9i6j8 - f2t9i8j6 + f2t9i6j7 - f2t9i7j6
              = 0
 BAL2T9AT7:  - f2t9i0j7 + f2t9i7j0 - f2t9i1j7 + f2t9i7j1 - f2t9i2j7 + f2t9i7j2
             - f2t9i3j7 + f2t9i7j3 - f2t9i4j7 + f2t9i7j4 - f2t9i5j7 + f2t9i7j5
             - f2t9i6j7 + f2t9i7j6 + f2t9i7j8 - f2t9i8j7 + f2t9i7j9 - f2t9i9j7
              = 0
 BAL2T9AT8:  - f2t9i0j8 + f2t9i8j0 - f2t9i1j8 + f2t9i8j1 - f2t9i2j8 + f2t9i8j2
             - f2t9i3j8 + f2t9i8j3 - f2t9i4j8 + f2t9i8j4 + f2t9i8j5 - f2t9i5j8
             - f2t9i6j8 + f2t9i8j6 - f2t9i7j8 + f2t9i8j7 + f2t9i8j9 - f2t9i9j8
              = 0
 BAL2T9AT9:  f2t9i9j0 - f2t9i0j9 - f2t9i1j9 + f2t9i9j1 - f2t9i2j9 + f2t9i9j2
             - f2t9i3j9 + f2t9i9j3 - f2t9i4j9 + f2t9i9j4 - f2t9i5j9 + f2t9i9j5
             - f2t9i6j9 + f2t9i9j6 - f2t9i7j9 + f2t9i9j7 - f2t9i8j9 + f2t9i9j8
              = -1
 BAL1T3AT0:  - f1t3i9j0 + f1t3i0j9 + f1t3i0j6 - f1t3i6j0 + f1t3i0j1 - f1t3i1j0
             + f1t3i0j3 - f1t3i3j0 + f1t3i0j2 - f1t3i2j0 + f1t3i0j8 - f1t3i8j0
             + f1t3i0j7 - f1t3i7j0 + f1t3i0j4 - f1t3i4j0 + f1t3i0j5 - f1t3i5j0
              = 0
 BAL1T3AT1:  - f1t3i0j1 + f1t3i1j0 - f1t3i2j1 + f1t3i1j2 + f1t3i1j3 - f1t3i3j1
             + f1t3i1j5 - f1t3i5j1 + f1t3i1j4 - f1t3i4j1 + f1t3i1j6 - f1t3i6j1
             + f1t3i1j8 - f1t3i8j1 + f1t3i1j7 - f1t3i7j1 + f1t3i1j9 - f1t3i9j1
              = 1
 BAL1T3AT2:  - f1t3i0j2 + f1t3i2j0 + f1t3i2j1 - f1t3i1j2 - f1t3i4j2 + f1t3i2j4
             + f1t3i2j5 - f1t3i5j2 + f1t3i2j3 - f1t3i3j2 + f1t3i2j8 - f1t3i8j2
             + f1t3i2j6 - f1t3i6j2 + f1t3i2j9 - f1t3i9j2 + f1t3i2j7 - f1t3i7j2
              = 0
 BAL1T3AT3:  - f1t3i0j3 + f1t3i3j0 - f1t3i1j3 + f1t3i3j1 - f1t3i2j3 + f1t3i3j2
             + f1t3i3j5 - f1t3i5j3 + f1t3i3j4 - f1t3i4j3 + f1t3i3j6 - f1t3i6j3
             + f1t3i3j9 - f1t3i9j3 + f1t3i3j8 - f1t3i8j3 + f1t3i3j7 - f1t3i7j3
              = -1
 BAL1T3AT4:  - f1t3i0j4 + f1t3i4j0 - f1t3i1j4 + f1t3i4j1 + f1t3i4j2 - f1t3i2j4
             - f1t3i3j4 + f1t3i4j3 - f1t3i6j4 + f1t3i4j6 + f1t3i4j8 - f1t3i8j4
             + f1t3i4j7 - f1t3i7j4 + f1t3i4j5 - f1t3i5j4 + f1t3i4j9 - f1t3i9j4
              = 0
 BAL1T3AT5:  - f1t3i0j5 + f1t3i5j0 - f1t3i1j5 + f1t3i5j1 - f1t3i2j5 + f1t3i5j2
             - f1t3i3j5 + f1t3i5j3 - f1t3i4j5 + f1t3i5j4 - f1t3i8j5 + f1t3i5j8
             + f1t3i5j9 - f1t3i9j5 + f1t3i5j7 - f1t3i7j5 + f1t3i5j6 - f1t3i6j5
              = 0
 BAL1T3AT6:  - f1t3i0j6 + f1t3i6j0 - f1t3i1j6 + f1t3i6j1 - f1t3i2j6 + f1t3i6j2
             - f1t3i3j6 + f1t3i6j3 + f1t3i6j4 - f1t3i4j6 - f1t3i5j6 + f1t3i6j5
             + f1t3i6j9 - f1t3i9j6 + f1t3i6j8 - f1t3i8j6 + f1t3i6j7 - f1t3i7j6
              = 0
 BAL1T3AT7:  - f1t3i0j7 + f1t3i7j0 - f1t3i1j7 + f1t3i7j1 - f1t3i2j7 + f1t3i7j2
             - f1t3i3j7 + f1t3i7j3 - f1t3i4j7 + f1t3i7j4 - f1t3i5j7 + f1t3i7j5
             - f1t3i6j7 + f1t3i7j6 + f1t3i7j8 - f1t3i8j7 + f1t3i7j9 - f1t3i9j7
              = 0
 BAL1T3AT8:  - f1t3i0j8 + f1t3i8j0 - f1t3i1j8 + f1t3i8j1 - f1t3i2j8 + f1t3i8j2
             - f1t3i3j8 + f1t3i8j3 - f1t3i4j8 + f1t3i8j4 + f1t3i8j5 - f1t3i5j8
             - f1t3i6j8 + f1t3i8j6 - f1t3i7j8 + f1t3i8j7 + f1t3i8j9 - f1t3i9j8
              = 0
 BAL1T3AT9:  f1t3i9j0 - f1t3i0j9 - f1t3i1j9 + f1t3i9j1 - f1t3i2j9 + f1t3i9j2
             - f1t3i3j9 + f1t3i9j3 - f1t3i4j9 + f1t3i9j4 - f1t3i5j9 + f1t3i9j5
             - f1t3i6j9 + f1t3i9j6 - f1t3i7j9 + f1t3i9j7 - f1t3i8j9 + f1t3i9j8
              = 0
 BAL7T6AT0:  - f7t6i9j0 + f7t6i0j9 + f7t6i0j6 - f7t6i6j0 + f7t6i0j1 - f7t6i1j0
             + f7t6i0j3 - f7t6i3j0 + f7t6i0j2 - f7t6i2j0 + f7t6i0j8 - f7t6i8j0
             + f7t6i0j7 - f7t6i7j0 + f7t6i0j4 - f7t6i4j0 + f7t6i0j5 - f7t6i5j0
              = 0
 BAL7T6AT1:  - f7t6i0j1 + f7t6i1j0 - f7t6i2j1 + f7t6i1j2 + f7t6i1j3 - f7t6i3j1
             + f7t6i1j5 - f7t6i5j1 + f7t6i1j4 - f7t6i4j1 + f7t6i1j6 - f7t6i6j1
             + f7t6i1j8 - f7t6i8j1 + f7t6i1j7 - f7t6i7j1 + f7t6i1j9 - f7t6i9j1
              = 0
 BAL7T6AT2:  - f7t6i0j2 + f7t6i2j0 + f7t6i2j1 - f7t6i1j2 - f7t6i4j2 + f7t6i2j4
             + f7t6i2j5 - f7t6i5j2 + f7t6i2j3 - f7t6i3j2 + f7t6i2j8 - f7t6i8j2
             + f7t6i2j6 - f7t6i6j2 + f7t6i2j9 - f7t6i9j2 + f7t6i2j7 - f7t6i7j2
              = 0
 BAL7T6AT3:  - f7t6i0j3 + f7t6i3j0 - f7t6i1j3 + f7t6i3j1 - f7t6i2j3 + f7t6i3j2
             + f7t6i3j5 - f7t6i5j3 + f7t6i3j4 - f7t6i4j3 + f7t6i3j6 - f7t6i6j3
             + f7t6i3j9 - f7t6i9j3 + f7t6i3j8 - f7t6i8j3 + f7t6i3j7 - f7t6i7j3
              = 0
 BAL7T6AT4:  - f7t6i0j4 + f7t6i4j0 - f7t6i1j4 + f7t6i4j1 + f7t6i4j2 - f7t6i2j4
             - f7t6i3j4 + f7t6i4j3 - f7t6i6j4 + f7t6i4j6 + f7t6i4j8 - f7t6i8j4
             + f7t6i4j7 - f7t6i7j4 + f7t6i4j5 - f7t6i5j4 + f7t6i4j9 - f7t6i9j4
              = 0
 BAL7T6AT5:  - f7t6i0j5 + f7t6i5j0 - f7t6i1j5 + f7t6i5j1 - f7t6i2j5 + f7t6i5j2
             - f7t6i3j5 + f7t6i5j3 - f7t6i4j5 + f7t6i5j4 - f7t6i8j5 + f7t6i5j8
             + f7t6i5j9 - f7t6i9j5 + f7t6i5j7 - f7t6i7j5 + f7t6i5j6 - f7t6i6j5
              = 0
 BAL7T6AT6:  - f7t6i0j6 + f7t6i6j0 - f7t6i1j6 + f7t6i6j1 - f7t6i2j6 + f7t6i6j2
             - f7t6i3j6 + f7t6i6j3 + f7t6i6j4 - f7t6i4j6 - f7t6i5j6 + f7t6i6j5
             + f7t6i6j9 - f7t6i9j6 + f7t6i6j8 - f7t6i8j6 + f7t6i6j7 - f7t6i7j6
              = -1
 BAL7T6AT7:  - f7t6i0j7 + f7t6i7j0 - f7t6i1j7 + f7t6i7j1 - f7t6i2j7 + f7t6i7j2
             - f7t6i3j7 + f7t6i7j3 - f7t6i4j7 + f7t6i7j4 - f7t6i5j7 + f7t6i7j5
             - f7t6i6j7 + f7t6i7j6 + f7t6i7j8 - f7t6i8j7 + f7t6i7j9 - f7t6i9j7
              = 1
 BAL7T6AT8:  - f7t6i0j8 + f7t6i8j0 - f7t6i1j8 + f7t6i8j1 - f7t6i2j8 + f7t6i8j2
             - f7t6i3j8 + f7t6i8j3 - f7t6i4j8 + f7t6i8j4 + f7t6i8j5 - f7t6i5j8
             - f7t6i6j8 + f7t6i8j6 - f7t6i7j8 + f7t6i8j7 + f7t6i8j9 - f7t6i9j8
              = 0
 BAL7T6AT9:  f7t6i9j0 - f7t6i0j9 - f7t6i1j9 + f7t6i9j1 - f7t6i2j9 + f7t6i9j2
             - f7t6i3j9 + f7t6i9j3 - f7t6i4j9 + f7t6i9j4 - f7t6i5j9 + f7t6i9j5
             - f7t6i6j9 + f7t6i9j6 - f7t6i7j9 + f7t6i9j7 - f7t6i8j9 + f7t6i9j8
              = 0
 BAL7T0AT0:  - f7t0i9j0 + f7t0i0j9 + f7t0i0j6 - f7t0i6j0 + f7t0i0j1 - f7t0i1j0
             + f7t0i0j3 - f7t0i3j0 + f7t0i0j2 - f7t0i2j0 + f7t0i0j8 - f7t0i8j0
             + f7t0i0j7 - f7t0i7j0 + f7t0i0j4 - f7t0i4j0 + f7t0i0j5 - f7t0i5j0
              = -1
 BAL7T0AT1:  - f7t0i0j1 + f7t0i1j0 - f7t0i2j1 + f7t0i1j2 + f7t0i1j3 - f7t0i3j1
             + f7t0i1j5 - f7t0i5j1 + f7t0i1j4 - f7t0i4j1 + f7t0i1j6 - f7t0i6j1
             + f7t0i1j8 - f7t0i8j1 + f7t0i1j7 - f7t0i7j1 + f7t0i1j9 - f7t0i9j1
              = 0
 BAL7T0AT2:  - f7t0i0j2 + f7t0i2j0 + f7t0i2j1 - f7t0i1j2 - f7t0i4j2 + f7t0i2j4
             + f7t0i2j5 - f7t0i5j2 + f7t0i2j3 - f7t0i3j2 + f7t0i2j8 - f7t0i8j2
             + f7t0i2j6 - f7t0i6j2 + f7t0i2j9 - f7t0i9j2 + f7t0i2j7 - f7t0i7j2
              = 0
 BAL7T0AT3:  - f7t0i0j3 + f7t0i3j0 - f7t0i1j3 + f7t0i3j1 - f7t0i2j3 + f7t0i3j2
             + f7t0i3j5 - f7t0i5j3 + f7t0i3j4 - f7t0i4j3 + f7t0i3j6 - f7t0i6j3
             + f7t0i3j9 - f7t0i9j3 + f7t0i3j8 - f7t0i8j3 + f7t0i3j7 - f7t0i7j3
              = 0
 BAL7T0AT4:  - f7t0i0j4 + f7t0i4j0 - f7t0i1j4 + f7t0i4j1 + f7t0i4j2 - f7t0i2j4
             - f7t0i3j4 + f7t0i4j3 - f7t0i6j4 + f7t0i4j6 + f7t0i4j8 - f7t0i8j4
             + f7t0i4j7 - f7t0i7j4 + f7t0i4j5 - f7t0i5j4 + f7t0i4j9 - f7t0i9j4
              = 0
 BAL7T0AT5:  - f7t0i0j5 + f7t0i5j0 - f7t0i1j5 + f7t0i5j1 - f7t0i2j5 + f7t0i5j2
             - f7t0i3j5 + f7t0i5j3 - f7t0i4j5 + f7t0i5j4 - f7t0i8j5 + f7t0i5j8
             + f7t0i5j9 - f7t0i9j5 + f7t0i5j7 - f7t0i7j5 + f7t0i5j6 - f7t0i6j5
              = 0
 BAL7T0AT6:  - f7t0i0j6 + f7t0i6j0 - f7t0i1j6 + f7t0i6j1 - f7t0i2j6 + f7t0i6j2
             - f7t0i3j6 + f7t0i6j3 + f7t0i6j4 - f7t0i4j6 - f7t0i5j6 + f7t0i6j5
             + f7t0i6j9 - f7t0i9j6 + f7t0i6j8 - f7t0i8j6 + f7t0i6j7 - f7t0i7j6
              = 0
 BAL7T0AT7:  - f7t0i0j7 + f7t0i7j0 - f7t0i1j7 + f7t0i7j1 - f7t0i2j7 + f7t0i7j2
             - f7t0i3j7 + f7t0i7j3 - f7t0i4j7 + f7t0i7j4 - f7t0i5j7 + f7t0i7j5
             - f7t0i6j7 + f7t0i7j6 + f7t0i7j8 - f7t0i8j7 + f7t0i7j9 - f7t0i9j7
              = 1
 BAL7T0AT8:  - f7t0i0j8 + f7t0i8j0 - f7t0i1j8 + f7t0i8j1 - f7t0i2j8 + f7t0i8j2
             - f7t0i3j8 + f7t0i8j3 - f7t0i4j8 + f7t0i8j4 + f7t0i8j5 - f7t0i5j8
             - f7t0i6j8 + f7t0i8j6 - f7t0i7j8 + f7t0i8j7 + f7t0i8j9 - f7t0i9j8
              = 0
 BAL7T0AT9:  f7t0i9j0 - f7t0i0j9 - f7t0i1j9 + f7t0i9j1 - f7t0i2j9 + f7t0i9j2
             - f7t0i3j9 + f7t0i9j3 - f7t0i4j9 + f7t0i9j4 - f7t0i5j9 + f7t0i9j5
             - f7t0i6j9 + f7t0i9j6 - f7t0i7j9 + f7t0i9j7 - f7t0i8j9 + f7t0i9j8
              = 0
 BAL7T4AT0:  - f7t4i9j0 + f7t4i0j9 + f7t4i0j6 - f7t4i6j0 + f7t4i0j1 - f7t4i1j0
             + f7t4i0j3 - f7t4i3j0 + f7t4i0j2 - f7t4i2j0 + f7t4i0j8 - f7t4i8j0
             + f7t4i0j7 - f7t4i7j0 + f7t4i0j4 - f7t4i4j0 + f7t4i0j5 - f7t4i5j0
              = 0
 BAL7T4AT1:  - f7t4i0j1 + f7t4i1j0 - f7t4i2j1 + f7t4i1j2 + f7t4i1j3 - f7t4i3j1
             + f7t4i1j5 - f7t4i5j1 + f7t4i1j4 - f7t4i4j1 + f7t4i1j6 - f7t4i6j1
             + f7t4i1j8 - f7t4i8j1 + f7t4i1j7 - f7t4i7j1 + f7t4i1j9 - f7t4i9j1
              = 0
 BAL7T4AT2:  - f7t4i0j2 + f7t4i2j0 + f7t4i2j1 - f7t4i1j2 - f7t4i4j2 + f7t4i2j4
             + f7t4i2j5 - f7t4i5j2 + f7t4i2j3 - f7t4i3j2 + f7t4i2j8 - f7t4i8j2
             + f7t4i2j6 - f7t4i6j2 + f7t4i2j9 - f7t4i9j2 + f7t4i2j7 - f7t4i7j2
              = 0
 BAL7T4AT3:  - f7t4i0j3 + f7t4i3j0 - f7t4i1j3 + f7t4i3j1 - f7t4i2j3 + f7t4i3j2
             + f7t4i3j5 - f7t4i5j3 + f7t4i3j4 - f7t4i4j3 + f7t4i3j6 - f7t4i6j3
             + f7t4i3j9 - f7t4i9j3 + f7t4i3j8 - f7t4i8j3 + f7t4i3j7 - f7t4i7j3
              = 0
 BAL7T4AT4:  - f7t4i0j4 + f7t4i4j0 - f7t4i1j4 + f7t4i4j1 + f7t4i4j2 - f7t4i2j4
             - f7t4i3j4 + f7t4i4j3 - f7t4i6j4 + f7t4i4j6 + f7t4i4j8 - f7t4i8j4
             + f7t4i4j7 - f7t4i7j4 + f7t4i4j5 - f7t4i5j4 + f7t4i4j9 - f7t4i9j4
              = -1
 BAL7T4AT5:  - f7t4i0j5 + f7t4i5j0 - f7t4i1j5 + f7t4i5j1 - f7t4i2j5 + f7t4i5j2
             - f7t4i3j5 + f7t4i5j3 - f7t4i4j5 + f7t4i5j4 - f7t4i8j5 + f7t4i5j8
             + f7t4i5j9 - f7t4i9j5 + f7t4i5j7 - f7t4i7j5 + f7t4i5j6 - f7t4i6j5
              = 0
 BAL7T4AT6:  - f7t4i0j6 + f7t4i6j0 - f7t4i1j6 + f7t4i6j1 - f7t4i2j6 + f7t4i6j2
             - f7t4i3j6 + f7t4i6j3 + f7t4i6j4 - f7t4i4j6 - f7t4i5j6 + f7t4i6j5
             + f7t4i6j9 - f7t4i9j6 + f7t4i6j8 - f7t4i8j6 + f7t4i6j7 - f7t4i7j6
              = 0
 BAL7T4AT7:  - f7t4i0j7 + f7t4i7j0 - f7t4i1j7 + f7t4i7j1 - f7t4i2j7 + f7t4i7j2
             - f7t4i3j7 + f7t4i7j3 - f7t4i4j7 + f7t4i7j4 - f7t4i5j7 + f7t4i7j5
             - f7t4i6j7 + f7t4i7j6 + f7t4i7j8 - f7t4i8j7 + f7t4i7j9 - f7t4i9j7
              = 1
 BAL7T4AT8:  - f7t4i0j8 + f7t4i8j0 - f7t4i1j8 + f7t4i8j1 - f7t4i2j8 + f7t4i8j2
             - f7t4i3j8 + f7t4i8j3 - f7t4i4j8 + f7t4i8j4 + f7t4i8j5 - f7t4i5j8
             - f7t4i6j8 + f7t4i8j6 - f7t4i7j8 + f7t4i8j7 + f7t4i8j9 - f7t4i9j8
              = 0
 BAL7T4AT9:  f7t4i9j0 - f7t4i0j9 - f7t4i1j9 + f7t4i9j1 - f7t4i2j9 + f7t4i9j2
             - f7t4i3j9 + f7t4i9j3 - f7t4i4j9 + f7t4i9j4 - f7t4i5j9 + f7t4i9j5
             - f7t4i6j9 + f7t4i9j6 - f7t4i7j9 + f7t4i9j7 - f7t4i8j9 + f7t4i9j8
              = 0
 BAL7T8AT0:  - f7t8i9j0 + f7t8i0j9 + f7t8i0j6 - f7t8i6j0 + f7t8i0j1 - f7t8i1j0
             + f7t8i0j3 - f7t8i3j0 + f7t8i0j2 - f7t8i2j0 + f7t8i0j8 - f7t8i8j0
             + f7t8i0j7 - f7t8i7j0 + f7t8i0j4 - f7t8i4j0 + f7t8i0j5 - f7t8i5j0
              = 0
 BAL7T8AT1:  - f7t8i0j1 + f7t8i1j0 - f7t8i2j1 + f7t8i1j2 + f7t8i1j3 - f7t8i3j1
             + f7t8i1j5 - f7t8i5j1 + f7t8i1j4 - f7t8i4j1 + f7t8i1j6 - f7t8i6j1
             + f7t8i1j8 - f7t8i8j1 + f7t8i1j7 - f7t8i7j1 + f7t8i1j9 - f7t8i9j1
              = 0
 BAL7T8AT2:  - f7t8i0j2 + f7t8i2j0 + f7t8i2j1 - f7t8i1j2 - f7t8i4j2 + f7t8i2j4
             + f7t8i2j5 - f7t8i5j2 + f7t8i2j3 - f7t8i3j2 + f7t8i2j8 - f7t8i8j2
             + f7t8i2j6 - f7t8i6j2 + f7t8i2j9 - f7t8i9j2 + f7t8i2j7 - f7t8i7j2
              = 0
 BAL7T8AT3:  - f7t8i0j3 + f7t8i3j0 - f7t8i1j3 + f7t8i3j1 - f7t8i2j3 + f7t8i3j2
             + f7t8i3j5 - f7t8i5j3 + f7t8i3j4 - f7t8i4j3 + f7t8i3j6 - f7t8i6j3
             + f7t8i3j9 - f7t8i9j3 + f7t8i3j8 - f7t8i8j3 + f7t8i3j7 - f7t8i7j3
              = 0
 BAL7T8AT4:  - f7t8i0j4 + f7t8i4j0 - f7t8i1j4 + f7t8i4j1 + f7t8i4j2 - f7t8i2j4
             - f7t8i3j4 + f7t8i4j3 - f7t8i6j4 + f7t8i4j6 + f7t8i4j8 - f7t8i8j4
             + f7t8i4j7 - f7t8i7j4 + f7t8i4j5 - f7t8i5j4 + f7t8i4j9 - f7t8i9j4
              = 0
 BAL7T8AT5:  - f7t8i0j5 + f7t8i5j0 - f7t8i1j5 + f7t8i5j1 - f7t8i2j5 + f7t8i5j2
             - f7t8i3j5 + f7t8i5j3 - f7t8i4j5 + f7t8i5j4 - f7t8i8j5 + f7t8i5j8
             + f7t8i5j9 - f7t8i9j5 + f7t8i5j7 - f7t8i7j5 + f7t8i5j6 - f7t8i6j5
              = 0
 BAL7T8AT6:  - f7t8i0j6 + f7t8i6j0 - f7t8i1j6 + f7t8i6j1 - f7t8i2j6 + f7t8i6j2
             - f7t8i3j6 + f7t8i6j3 + f7t8i6j4 - f7t8i4j6 - f7t8i5j6 + f7t8i6j5
             + f7t8i6j9 - f7t8i9j6 + f7t8i6j8 - f7t8i8j6 + f7t8i6j7 - f7t8i7j6
              = 0
 BAL7T8AT7:  - f7t8i0j7 + f7t8i7j0 - f7t8i1j7 + f7t8i7j1 - f7t8i2j7 + f7t8i7j2
             - f7t8i3j7 + f7t8i7j3 - f7t8i4j7 + f7t8i7j4 - f7t8i5j7 + f7t8i7j5
             - f7t8i6j7 + f7t8i7j6 + f7t8i7j8 - f7t8i8j7 + f7t8i7j9 - f7t8i9j7
              = 1
 BAL7T8AT8:  - f7t8i0j8 + f7t8i8j0 - f7t8i1j8 + f7t8i8j1 - f7t8i2j8 + f7t8i8j2
             - f7t8i3j8 + f7t8i8j3 - f7t8i4j8 + f7t8i8j4 + f7t8i8j5 - f7t8i5j8
             - f7t8i6j8 + f7t8i8j6 - f7t8i7j8 + f7t8i8j7 + f7t8i8j9 - f7t8i9j8
              = -1
 BAL7T8AT9:  f7t8i9j0 - f7t8i0j9 - f7t8i1j9 + f7t8i9j1 - f7t8i2j9 + f7t8i9j2
             - f7t8i3j9 + f7t8i9j3 - f7t8i4j9 + f7t8i9j4 - f7t8i5j9 + f7t8i9j5
             - f7t8i6j9 + f7t8i9j6 - f7t8i7j9 + f7t8i9j7 - f7t8i8j9 + f7t8i9j8
              = 0
 BAL7T5AT0:  - f7t5i9j0 + f7t5i0j9 + f7t5i0j6 - f7t5i6j0 + f7t5i0j1 - f7t5i1j0
             + f7t5i0j3 - f7t5i3j0 + f7t5i0j2 - f7t5i2j0 + f7t5i0j8 - f7t5i8j0
             + f7t5i0j7 - f7t5i7j0 + f7t5i0j4 - f7t5i4j0 + f7t5i0j5 - f7t5i5j0
              = 0
 BAL7T5AT1:  - f7t5i0j1 + f7t5i1j0 - f7t5i2j1 + f7t5i1j2 + f7t5i1j3 - f7t5i3j1
             + f7t5i1j5 - f7t5i5j1 + f7t5i1j4 - f7t5i4j1 + f7t5i1j6 - f7t5i6j1
             + f7t5i1j8 - f7t5i8j1 + f7t5i1j7 - f7t5i7j1 + f7t5i1j9 - f7t5i9j1
              = 0
 BAL7T5AT2:  - f7t5i0j2 + f7t5i2j0 + f7t5i2j1 - f7t5i1j2 - f7t5i4j2 + f7t5i2j4
             + f7t5i2j5 - f7t5i5j2 + f7t5i2j3 - f7t5i3j2 + f7t5i2j8 - f7t5i8j2
             + f7t5i2j6 - f7t5i6j2 + f7t5i2j9 - f7t5i9j2 + f7t5i2j7 - f7t5i7j2
              = 0
 BAL7T5AT3:  - f7t5i0j3 + f7t5i3j0 - f7t5i1j3 + f7t5i3j1 - f7t5i2j3 + f7t5i3j2
             + f7t5i3j5 - f7t5i5j3 + f7t5i3j4 - f7t5i4j3 + f7t5i3j6 - f7t5i6j3
             + f7t5i3j9 - f7t5i9j3 + f7t5i3j8 - f7t5i8j3 + f7t5i3j7 - f7t5i7j3
              = 0
 BAL7T5AT4:  - f7t5i0j4 + f7t5i4j0 - f7t5i1j4 + f7t5i4j1 + f7t5i4j2 - f7t5i2j4
             - f7t5i3j4 + f7t5i4j3 - f7t5i6j4 + f7t5i4j6 + f7t5i4j8 - f7t5i8j4
             + f7t5i4j7 - f7t5i7j4 + f7t5i4j5 - f7t5i5j4 + f7t5i4j9 - f7t5i9j4
              = 0
 BAL7T5AT5:  - f7t5i0j5 + f7t5i5j0 - f7t5i1j5 + f7t5i5j1 - f7t5i2j5 + f7t5i5j2
             - f7t5i3j5 + f7t5i5j3 - f7t5i4j5 + f7t5i5j4 - f7t5i8j5 + f7t5i5j8
             + f7t5i5j9 - f7t5i9j5 + f7t5i5j7 - f7t5i7j5 + f7t5i5j6 - f7t5i6j5
              = -1
 BAL7T5AT6:  - f7t5i0j6 + f7t5i6j0 - f7t5i1j6 + f7t5i6j1 - f7t5i2j6 + f7t5i6j2
             - f7t5i3j6 + f7t5i6j3 + f7t5i6j4 - f7t5i4j6 - f7t5i5j6 + f7t5i6j5
             + f7t5i6j9 - f7t5i9j6 + f7t5i6j8 - f7t5i8j6 + f7t5i6j7 - f7t5i7j6
              = 0
 BAL7T5AT7:  - f7t5i0j7 + f7t5i7j0 - f7t5i1j7 + f7t5i7j1 - f7t5i2j7 + f7t5i7j2
             - f7t5i3j7 + f7t5i7j3 - f7t5i4j7 + f7t5i7j4 - f7t5i5j7 + f7t5i7j5
             - f7t5i6j7 + f7t5i7j6 + f7t5i7j8 - f7t5i8j7 + f7t5i7j9 - f7t5i9j7
              = 1
 BAL7T5AT8:  - f7t5i0j8 + f7t5i8j0 - f7t5i1j8 + f7t5i8j1 - f7t5i2j8 + f7t5i8j2
             - f7t5i3j8 + f7t5i8j3 - f7t5i4j8 + f7t5i8j4 + f7t5i8j5 - f7t5i5j8
             - f7t5i6j8 + f7t5i8j6 - f7t5i7j8 + f7t5i8j7 + f7t5i8j9 - f7t5i9j8
              = 0
 BAL7T5AT9:  f7t5i9j0 - f7t5i0j9 - f7t5i1j9 + f7t5i9j1 - f7t5i2j9 + f7t5i9j2
             - f7t5i3j9 + f7t5i9j3 - f7t5i4j9 + f7t5i9j4 - f7t5i5j9 + f7t5i9j5
             - f7t5i6j9 + f7t5i9j6 - f7t5i7j9 + f7t5i9j7 - f7t5i8j9 + f7t5i9j8
              = 0
 CAP2T9I7J8: - x7t8 + f2t9i7j8 + f2t9i8j7 <= 0
 CAP2T9I8J5: - x8t5 + f2t9i8j5 + f2t9i5j8 <= 0
 CAP2T9I5J9: - x5t9 + f2t9i5j9 + f2t9i9j5 <= 0
 CAP2T9I9J0: - x9t0 + f2t9i9j0 + f2t9i0j9 <= 0
 CAP2T9I0J6: - x0t6 + f2t9i0j6 + f2t9i6j0 <= 0
 CAP2T9I6J4: - x6t4 + f2t9i6j4 + f2t9i4j6 <= 0
 CAP2T9I4J2: - x4t2 + f2t9i4j2 + f2t9i2j4 <= 0
 CAP2T9I2J1: - x2t1 + f2t9i2j1 + f2t9i1j2 <= 0
 CAP2T9I1J3: - x1t3 + f2t9i1j3 + f2t9i3j1 <= 0
 CAP2T9I2J5: - x2t5 + f2t9i2j5 + f2t9i5j2 <= 0
 CAP2T9I0J1: - x0t1 + f2t9i0j1 + f2t9i1j0 <= 0
 CAP2T9I6J9: - x6t9 + f2t9i6j9 + f2t9i9j6 <= 0
 CAP2T9I2J3: - x2t3 + f2t9i2j3 + f2t9i3j2 <= 0
 CAP2T9I2J8: - x2t8 + f2t9i2j8 + f2t9i8j2 <= 0
 CAP2T9I4J8: - x4t8 + f2t9i4j8 + f2t9i8j4 <= 0
 CAP2T9I3J5: - x3t5 + f2t9i3j5 + f2t9i5j3 <= 0
 CAP2T9I5J7: - x5t7 + f2t9i5j7 + f2t9i7j5 <= 0
 CAP2T9I1J5: - x1t5 + f2t9i1j5 + f2t9i5j1 <= 0
 CAP2T9I1J4: - x1t4 + f2t9i1j4 + f2t9i4j1 <= 0
 CAP2T9I8J9: - x8t9 + f2t9i8j9 + f2t9i9j8 <= 0
 CAP2T9I0J3: - x0t3 + f2t9i0j3 + f2t9i3j0 <= 0
 CAP2T9I3J4: - x3t4 + f2t9i3j4 + f2t9i4j3 <= 0
 CAP2T9I6J8: - x6t8 + f2t9i6j8 + f2t9i8j6 <= 0
 CAP2T9I3J6: - x3t6 + f2t9i3j6 + f2t9i6j3 <= 0
 CAP2T9I0J2: - x0t2 + f2t9i0j2 + f2t9i2j0 <= 0
 CAP2T9I4J7: - x4t7 + f2t9i4j7 + f2t9i7j4 <= 0
 CAP2T9I3J9: - x3t9 + f2t9i3j9 + f2t9i9j3 <= 0
 CAP2T9I2J6: - x2t6 + f2t9i2j6 + f2t9i6j2 <= 0
 CAP2T9I5J6: - x5t6 + f2t9i5j6 + f2t9i6j5 <= 0
 CAP2T9I7J9: - x7t9 + f2t9i7j9 + f2t9i9j7 <= 0
 CAP2T9I3J8: - x3t8 + f2t9i3j8 + f2t9i8j3 <= 0
 CAP2T9I3J7: - x3t7 + f2t9i3j7 + f2t9i7j3 <= 0
 CAP2T9I2J9: - x2t9 + f2t9i2j9 + f2t9i9j2 <= 0
 CAP2T9I4J5: - x4t5 + f2t9i4j5 + f2t9i5j4 <= 0
 CAP2T9I1J6: - x1t6 + f2t9i1j6 + f2t9i6j1 <= 0
 CAP2T9I1J8: - x1t8 + f2t9i1j8 + f2t9i8j1 <= 0
 CAP2T9I0J8: - x0t8 + f2t9i0j8 + f2t9i8j0 <= 0
 CAP2T9I4J9: - x4t9 + f2t9i4j9 + f2t9i9j4 <= 0
 CAP2T9I0J7: - x0t7 + f2t9i0j7 + f2t9i7j0 <= 0
 CAP2T9I0J4: - x0t4 + f2t9i0j4 + f2t9i4j0 <= 0
 CAP2T9I6J7: - x6t7 + f2t9i6j7 + f2t9i7j6 <= 0
 CAP2T9I2J7: - x2t7 + f2t9i2j7 + f2t9i7j2 <= 0
 CAP2T9I1J7: - x1t7 + f2t9i1j7 + f2t9i7j1 <= 0
 CAP2T9I0J5: - x0t5 + f2t9i0j5 + f2t9i5j0 <= 0
 CAP2T9I1J9: - x1t9 + f2t9i1j9 + f2t9i9j1 <= 0
 CAP1T3I7J8: - x7t8 + f1t3i7j8 + f1t3i8j7 <= 0
 CAP1T3I8J5: - x8t5 + f1t3i8j5 + f1t3i5j8 <= 0
 CAP1T3I5J9: - x5t9 + f1t3i5j9 + f1t3i9j5 <= 0
 CAP1T3I9J0: - x9t0 + f1t3i9j0 + f1t3i0j9 <= 0
 CAP1T3I0J6: - x0t6 + f1t3i0j6 + f1t3i6j0 <= 0
 CAP1T3I6J4: - x6t4 + f1t3i6j4 + f1t3i4j6 <= 0
 CAP1T3I4J2: - x4t2 + f1t3i4j2 + f1t3i2j4 <= 0
 CAP1T3I2J1: - x2t1 + f1t3i2j1 + f1t3i1j2 <= 0
 CAP1T3I1J3: - x1t3 + f1t3i1j3 + f1t3i3j1 <= 0
 CAP1T3I2J5: - x2t5 + f1t3i2j5 + f1t3i5j2 <= 0
 CAP1T3I0J1: - x0t1 + f1t3i0j1 + f1t3i1j0 <= 0
 CAP1T3I6J9: - x6t9 + f1t3i6j9 + f1t3i9j6 <= 0
 CAP1T3I2J3: - x2t3 + f1t3i2j3 + f1t3i3j2 <= 0
 CAP1T3I2J8: - x2t8 + f1t3i2j8 + f1t3i8j2 <= 0
 CAP1T3I4J8: - x4t8 + f1t3i4j8 + f1t3i8j4 <= 0
 CAP1T3I3J5: - x3t5 + f1t3i3j5 + f1t3i5j3 <= 0
 CAP1T3I5J7: - x5t7 + f1t3i5j7 + f1t3i7j5 <= 0
 CAP1T3I1J5: - x1t5 + f1t3i1j5 + f1t3i5j1 <= 0
 CAP1T3I1J4: - x1t4 + f1t3i1j4 + f1t3i4j1 <= 0
 CAP1T3I8J9: - x8t9 + f1t3i8j9 + f1t3i9j8 <= 0
 CAP1T3I0J3: - x0t3 + f1t3i0j3 + f1t3i3j0 <= 0
 CAP1T3I3J4: - x3t4 + f1t3i3j4 + f1t3i4j3 <= 0
 CAP1T3I6J8: - x6t8 + f1t3i6j8 + f1t3i8j6 <= 0
 CAP1T3I3J6: - x3t6 + f1t3i3j6 + f1t3i6j3 <= 0
 CAP1T3I0J2: - x0t2 + f1t3i0j2 + f1t3i2j0 <= 0
 CAP1T3I4J7: - x4t7 + f1t3i4j7 + f1t3i7j4 <= 0
 CAP1T3I3J9: - x3t9 + f1t3i3j9 + f1t3i9j3 <= 0
 CAP1T3I2J6: - x2t6 + f1t3i2j6 + f1t3i6j2 <= 0
 CAP1T3I5J6: - x5t6 + f1t3i5j6 + f1t3i6j5 <= 0
 CAP1T3I7J9: - x7t9 + f1t3i7j9 + f1t3i9j7 <= 0
 CAP1T3I3J8: - x3t8 + f1t3i3j8 + f1t3i8j3 <= 0
 CAP1T3I3J7: - x3t7 + f1t3i3j7 + f1t3i7j3 <= 0
 CAP1T3I2J9: - x2t9 + f1t3i2j9 + f1t3i9j2 <= 0
 CAP1T3I4J5: - x4t5 + f1t3i4j5 + f1t3i5j4 <= 0
 CAP1T3I1J6: - x1t6 + f1t3i1j6 + f1t3i6j1 <= 0
 CAP1T3I1J8: - x1t8 + f1t3i1j8 + f1t3i8j1 <= 0
 CAP1T3I0J8: - x0t8 + f1t3i0j8 + f1t3i8j0 <= 0
 CAP1T3I4J9: - x4t9 + f1t3i4j9 + f1t3i9j4 <= 0
 CAP1T3I0J7: - x0t7 + f1t3i0j7 + f1t3i7j0 <= 0
 CAP1T3I0J4: - x0t4 + f1t3i0j4 + f1t3i4j0 <= 0
 CAP1T3I6J7: - x6t7 + f1t3i6j7 + f1t3i7j6 <= 0
 CAP1T3I2J7: - x2t7 + f1t3i2j7 + f1t3i7j2 <= 0
 CAP1T3I1J7: - x1t7 + f1t3i1j7 + f1t3i7j1 <= 0
 CAP1T3I0J5: - x0t5 + f1t3i0j5 + f1t3i5j0 <= 0
 CAP1T3I1J9: - x1t9 + f1t3i1j9 + f1t3i9j1 <= 0
 CAP7T6I7J8: - x7t8 + f7t6i7j8 + f7t6i8j7 <= 0
 CAP7T6I8J5: - x8t5 + f7t6i8j5 + f7t6i5j8 <= 0
 CAP7T6I5J9: - x5t9 + f7t6i5j9 + f7t6i9j5 <= 0
 CAP7T6I9J0: - x9t0 + f7t6i9j0 + f7t6i0j9 <= 0
 CAP7T6I0J6: - x0t6 + f7t6i0j6 + f7t6i6j0 <= 0
 CAP7T6I6J4: - x6t4 + f7t6i6j4 + f7t6i4j6 <= 0
 CAP7T6I4J2: - x4t2 + f7t6i4j2 + f7t6i2j4 <= 0
 CAP7T6I2J1: - x2t1 + f7t6i2j1 + f7t6i1j2 <= 0
 CAP7T6I1J3: - x1t3 + f7t6i1j3 + f7t6i3j1 <= 0
 CAP7T6I2J5: - x2t5 + f7t6i2j5 + f7t6i5j2 <= 0
 CAP7T6I0J1: - x0t1 + f7t6i0j1 + f7t6i1j0 <= 0
 CAP7T6I6J9: - x6t9 + f7t6i6j9 + f7t6i9j6 <= 0
 CAP7T6I2J3: - x2t3 + f7t6i2j3 + f7t6i3j2 <= 0
 CAP7T6I2J8: - x2t8 + f7t6i2j8 + f7t6i8j2 <= 0
 CAP7T6I4J8: - x4t8 + f7t6i4j8 + f7t6i8j4 <= 0
 CAP7T6I3J5: - x3t5 + f7t6i3j5 + f7t6i5j3 <= 0
 CAP7T6I5J7: - x5t7 + f7t6i5j7 + f7t6i7j5 <= 0
 CAP7T6I1J5: - x1t5 + f7t6i1j5 + f7t6i5j1 <= 0
 CAP7T6I1J4: - x1t4 + f7t6i1j4 + f7t6i4j1 <= 0
 CAP7T6I8J9: - x8t9 + f7t6i8j9 + f7t6i9j8 <= 0
 CAP7T6I0J3: - x0t3 + f7t6i0j3 + f7t6i3j0 <= 0
 CAP7T6I3J4: - x3t4 + f7t6i3j4 + f7t6i4j3 <= 0
 CAP7T6I6J8: - x6t8 + f7t6i6j8 + f7t6i8j6 <= 0
 CAP7T6I3J6: - x3t6 + f7t6i3j6 + f7t6i6j3 <= 0
 CAP7T6I0J2: - x0t2 + f7t6i0j2 + f7t6i2j0 <= 0
 CAP7T6I4J7: - x4t7 + f7t6i4j7 + f7t6i7j4 <= 0
 CAP7T6I3J9: - x3t9 + f7t6i3j9 + f7t6i9j3 <= 0
 CAP7T6I2J6: - x2t6 + f7t6i2j6 + f7t6i6j2 <= 0
 CAP7T6I5J6: - x5t6 + f7t6i5j6 + f7t6i6j5 <= 0
 CAP7T6I7J9: - x7t9 + f7t6i7j9 + f7t6i9j7 <= 0
 CAP7T6I3J8: - x3t8 + f7t6i3j8 + f7t6i8j3 <= 0
 CAP7T6I3J7: - x3t7 + f7t6i3j7 + f7t6i7j3 <= 0
 CAP7T6I2J9: - x2t9 + f7t6i2j9 + f7t6i9j2 <= 0
 CAP7T6I4J5: - x4t5 + f7t6i4j5 + f7t6i5j4 <= 0
 CAP7T6I1J6: - x1t6 + f7t6i1j6 + f7t6i6j1 <= 0
 CAP7T6I1J8: - x1t8 + f7t6i1j8 + f7t6i8j1 <= 0
 CAP7T6I0J8: - x0t8 + f7t6i0j8 + f7t6i8j0 <= 0
 CAP7T6I4J9: - x4t9 + f7t6i4j9 + f7t6i9j4 <= 0
 CAP7T6I0J7: - x0t7 + f7t6i0j7 + f7t6i7j0 <= 0
 CAP7T6I0J4: - x0t4 + f7t6i0j4 + f7t6i4j0 <= 0
 CAP7T6I6J7: - x6t7 + f7t6i6j7 + f7t6i7j6 <= 0
 CAP7T6I2J7: - x2t7 + f7t6i2j7 + f7t6i7j2 <= 0
 CAP7T6I1J7: - x1t7 + f7t6i1j7 + f7t6i7j1 <= 0
 CAP7T6I0J5: - x0t5 + f7t6i0j5 + f7t6i5j0 <= 0
 CAP7T6I1J9: - x1t9 + f7t6i1j9 + f7t6i9j1 <= 0
 CAP7T0I7J8: - x7t8 + f7t0i7j8 + f7t0i8j7 <= 0
 CAP7T0I8J5: - x8t5 + f7t0i8j5 + f7t0i5j8 <= 0
 CAP7T0I5J9: - x5t9 + f7t0i5j9 + f7t0i9j5 <= 0
 CAP7T0I9J0: - x9t0 + f7t0i9j0 + f7t0i0j9 <= 0
 CAP7T0I0J6: - x0t6 + f7t0i0j6 + f7t0i6j0 <= 0
 CAP7T0I6J4: - x6t4 + f7t0i6j4 + f7t0i4j6 <= 0
 CAP7T0I4J2: - x4t2 + f7t0i4j2 + f7t0i2j4 <= 0
 CAP7T0I2J1: - x2t1 + f7t0i2j1 + f7t0i1j2 <= 0
 CAP7T0I1J3: - x1t3 + f7t0i1j3 + f7t0i3j1 <= 0
 CAP7T0I2J5: - x2t5 + f7t0i2j5 + f7t0i5j2 <= 0
 CAP7T0I0J1: - x0t1 + f7t0i0j1 + f7t0i1j0 <= 0
 CAP7T0I6J9: - x6t9 + f7t0i6j9 + f7t0i9j6 <= 0
 CAP7T0I2J3: - x2t3 + f7t0i2j3 + f7t0i3j2 <= 0
 CAP7T0I2J8: - x2t8 + f7t0i2j8 + f7t0i8j2 <= 0
 CAP7T0I4J8: - x4t8 + f7t0i4j8 + f7t0i8j4 <= 0
 CAP7T0I3J5: - x3t5 + f7t0i3j5 + f7t0i5j3 <= 0
 CAP7T0I5J7: - x5t7 + f7t0i5j7 + f7t0i7j5 <= 0
 CAP7T0I1J5: - x1t5 + f7t0i1j5 + f7t0i5j1 <= 0
 CAP7T0I1J4: - x1t4 + f7t0i1j4 + f7t0i4j1 <= 0
 CAP7T0I8J9: - x8t9 + f7t0i8j9 + f7t0i9j8 <= 0
 CAP7T0I0J3: - x0t3 + f7t0i0j3 + f7t0i3j0 <= 0
 CAP7T0I3J4: - x3t4 + f7t0i3j4 + f7t0i4j3 <= 0
 CAP7T0I6J8: - x6t8 + f7t0i6j8 + f7t0i8j6 <= 0
 CAP7T0I3J6: - x3t6 + f7t0i3j6 + f7t0i6j3 <= 0
 CAP7T0I0J2: - x0t2 + f7t0i0j2 + f7t0i2j0 <= 0
 CAP7T0I4J7: - x4t7 + f7t0i4j7 + f7t0i7j4 <= 0
 CAP7T0I3J9: - x3t9 + f7t0i3j9 + f7t0i9j3 <= 0
 CAP7T0I2J6: - x2t6 + f7t0i2j6 + f7t0i6j2 <= 0
 CAP7T0I5J6: - x5t6 + f7t0i5j6 + f7t0i6j5 <= 0
 CAP7T0I7J9: - x7t9 + f7t0i7j9 + f7t0i9j7 <= 0
 CAP7T0I3J8: - x3t8 + f7t0i3j8 + f7t0i8j3 <= 0
 CAP7T0I3J7: - x3t7 + f7t0i3j7 + f7t0i7j3 <= 0
 CAP7T0I2J9: - x2t9 + f7t0i2j9 + f7t0i9j2 <= 0
 CAP7T0I4J5: - x4t5 + f7t0i4j5 + f7t0i5j4 <= 0
 CAP7T0I1J6: - x1t6 + f7t0i1j6 + f7t0i6j1 <= 0
 CAP7T0I1J8: - x1t8 + f7t0i1j8 + f7t0i8j1 <= 0
 CAP7T0I0J8: - x0t8 + f7t0i0j8 + f7t0i8j0 <= 0
 CAP7T0I4J9: - x4t9 + f7t0i4j9 + f7t0i9j4 <= 0
 CAP7T0I0J7: - x0t7 + f7t0i0j7 + f7t0i7j0 <= 0
 CAP7T0I0J4: - x0t4 + f7t0i0j4 + f7t0i4j0 <= 0
 CAP7T0I6J7: - x6t7 + f7t0i6j7 + f7t0i7j6 <= 0
 CAP7T0I2J7: - x2t7 + f7t0i2j7 + f7t0i7j2 <= 0
 CAP7T0I1J7: - x1t7 + f7t0i1j7 + f7t0i7j1 <= 0
 CAP7T0I0J5: - x0t5 + f7t0i0j5 + f7t0i5j0 <= 0
 CAP7T0I1J9: - x1t9 + f7t0i1j9 + f7t0i9j1 <= 0
 CAP7T4I7J8: - x7t8 + f7t4i7j8 + f7t4i8j7 <= 0
 CAP7T4I8J5: - x8t5 + f7t4i8j5 + f7t4i5j8 <= 0
 CAP7T4I5J9: - x5t9 + f7t4i5j9 + f7t4i9j5 <= 0
 CAP7T4I9J0: - x9t0 + f7t4i9j0 + f7t4i0j9 <= 0
 CAP7T4I0J6: - x0t6 + f7t4i0j6 + f7t4i6j0 <= 0
 CAP7T4I6J4: - x6t4 + f7t4i6j4 + f7t4i4j6 <= 0
 CAP7T4I4J2: - x4t2 + f7t4i4j2 + f7t4i2j4 <= 0
 CAP7T4I2J1: - x2t1 + f7t4i2j1 + f7t4i1j2 <= 0
 CAP7T4I1J3: - x1t3 + f7t4i1j3 + f7t4i3j1 <= 0
 CAP7T4I2J5: - x2t5 + f7t4i2j5 + f7t4i5j2 <= 0
 CAP7T4I0J1: - x0t1 + f7t4i0j1 + f7t4i1j0 <= 0
 CAP7T4I6J9: - x6t9 + f7t4i6j9 + f7t4i9j6 <= 0
 CAP7T4I2J3: - x2t3 + f7t4i2j3 + f7t4i3j2 <= 0
 CAP7T4I2J8: - x2t8 + f7t4i2j8 + f7t4i8j2 <= 0
 CAP7T4I4J8: - x4t8 + f7t4i4j8 + f7t4i8j4 <= 0
 CAP7T4I3J5: - x3t5 + f7t4i3j5 + f7t4i5j3 <= 0
 CAP7T4I5J7: - x5t7 + f7t4i5j7 + f7t4i7j5 <= 0
 CAP7T4I1J5: - x1t5 + f7t4i1j5 + f7t4i5j1 <= 0
 CAP7T4I1J4: - x1t4 + f7t4i1j4 + f7t4i4j1 <= 0
 CAP7T4I8J9: - x8t9 + f7t4i8j9 + f7t4i9j8 <= 0
 CAP7T4I0J3: - x0t3 + f7t4i0j3 + f7t4i3j0 <= 0
 CAP7T4I3J4: - x3t4 + f7t4i3j4 + f7t4i4j3 <= 0
 CAP7T4I6J8: - x6t8 + f7t4i6j8 + f7t4i8j6 <= 0
 CAP7T4I3J6: - x3t6 + f7t4i3j6 + f7t4i6j3 <= 0
 CAP7T4I0J2: - x0t2 + f7t4i0j2 + f7t4i2j0 <= 0
 CAP7T4I4J7: - x4t7 + f7t4i4j7 + f7t4i7j4 <= 0
 CAP7T4I3J9: - x3t9 + f7t4i3j9 + f7t4i9j3 <= 0
 CAP7T4I2J6: - x2t6 + f7t4i2j6 + f7t4i6j2 <= 0
 CAP7T4I5J6: - x5t6 + f7t4i5j6 + f7t4i6j5 <= 0
 CAP7T4I7J9: - x7t9 + f7t4i7j9 + f7t4i9j7 <= 0
 CAP7T4I3J8: - x3t8 + f7t4i3j8 + f7t4i8j3 <= 0
 CAP7T4I3J7: - x3t7 + f7t4i3j7 + f7t4i7j3 <= 0
 CAP7T4I2J9: - x2t9 + f7t4i2j9 + f7t4i9j2 <= 0
 CAP7T4I4J5: - x4t5 + f7t4i4j5 + f7t4i5j4 <= 0
 CAP7T4I1J6: - x1t6 + f7t4i1j6 + f7t4i6j1 <= 0
 CAP7T4I1J8: - x1t8 + f7t4i1j8 + f7t4i8j1 <= 0
 CAP7T4I0J8: - x0t8 + f7t4i0j8 + f7t4i8j0 <= 0
 CAP7T4I4J9: - x4t9 + f7t4i4j9 + f7t4i9j4 <= 0
 CAP7T4I0J7: - x0t7 + f7t4i0j7 + f7t4i7j0 <= 0
 CAP7T4I0J4: - x0t4 + f7t4i0j4 + f7t4i4j0 <= 0
 CAP7T4I6J7: - x6t7 + f7t4i6j7 + f7t4i7j6 <= 0
 CAP7T4I2J7: - x2t7 + f7t4i2j7 + f7t4i7j2 <= 0
 CAP7T4I1J7: - x1t7 + f7t4i1j7 + f7t4i7j1 <= 0
 CAP7T4I0J5: - x0t5 + f7t4i0j5 + f7t4i5j0 <= 0
 CAP7T4I1J9: - x1t9 + f7t4i1j9 + f7t4i9j1 <= 0
 CAP7T8I7J8: - x7t8 + f7t8i7j8 + f7t8i8j7 <= 0
 CAP7T8I8J5: - x8t5 + f7t8i8j5 + f7t8i5j8 <= 0
 CAP7T8I5J9: - x5t9 + f7t8i5j9 + f7t8i9j5 <= 0
 CAP7T8I9J0: - x9t0 + f7t8i9j0 + f7t8i0j9 <= 0
 CAP7T8I0J6: - x0t6 + f7t8i0j6 + f7t8i6j0 <= 0
 CAP7T8I6J4: - x6t4 + f7t8i6j4 + f7t8i4j6 <= 0
 CAP7T8I4J2: - x4t2 + f7t8i4j2 + f7t8i2j4 <= 0
 CAP7T8I2J1: - x2t1 + f7t8i2j1 + f7t8i1j2 <= 0
 CAP7T8I1J3: - x1t3 + f7t8i1j3 + f7t8i3j1 <= 0
 CAP7T8I2J5: - x2t5 + f7t8i2j5 + f7t8i5j2 <= 0
 CAP7T8I0J1: - x0t1 + f7t8i0j1 + f7t8i1j0 <= 0
 CAP7T8I6J9: - x6t9 + f7t8i6j9 + f7t8i9j6 <= 0
 CAP7T8I2J3: - x2t3 + f7t8i2j3 + f7t8i3j2 <= 0
 CAP7T8I2J8: - x2t8 + f7t8i2j8 + f7t8i8j2 <= 0
 CAP7T8I4J8: - x4t8 + f7t8i4j8 + f7t8i8j4 <= 0
 CAP7T8I3J5: - x3t5 + f7t8i3j5 + f7t8i5j3 <= 0
 CAP7T8I5J7: - x5t7 + f7t8i5j7 + f7t8i7j5 <= 0
 CAP7T8I1J5: - x1t5 + f7t8i1j5 + f7t8i5j1 <= 0
 CAP7T8I1J4: - x1t4 + f7t8i1j4 + f7t8i4j1 <= 0
 CAP7T8I8J9: - x8t9 + f7t8i8j9 + f7t8i9j8 <= 0
 CAP7T8I0J3: - x0t3 + f7t8i0j3 + f7t8i3j0 <= 0
 CAP7T8I3J4: - x3t4 + f7t8i3j4 + f7t8i4j3 <= 0
 CAP7T8I6J8: - x6t8 + f7t8i6j8 + f7t8i8j6 <= 0
 CAP7T8I3J6: - x3t6 + f7t8i3j6 + f7t8i6j3 <= 0
 CAP7T8I0J2: - x0t2 + f7t8i0j2 + f7t8i2j0 <= 0
 CAP7T8I4J7: - x4t7 + f7t8i4j7 + f7t8i7j4 <= 0
 CAP7T8I3J9: - x3t9 + f7t8i3j9 + f7t8i9j3 <= 0
 CAP7T8I2J6: - x2t6 + f7t8i2j6 + f7t8i6j2 <= 0
 CAP7T8I5J6: - x5t6 + f7t8i5j6 + f7t8i6j5 <= 0
 CAP7T8I7J9: - x7t9 + f7t8i7j9 + f7t8i9j7 <= 0
 CAP7T8I3J8: - x3t8 + f7t8i3j8 + f7t8i8j3 <= 0
 CAP7T8I3J7: - x3t7 + f7t8i3j7 + f7t8i7j3 <= 0
 CAP7T8I2J9: - x2t9 + f7t8i2j9 + f7t8i9j2 <= 0
 CAP7T8I4J5: - x4t5 + f7t8i4j5 + f7t8i5j4 <= 0
 CAP7T8I1J6: - x1t6 + f7t8i1j6 + f7t8i6j1 <= 0
 CAP7T8I1J8: - x1t8 + f7t8i1j8 + f7t8i8j1 <= 0
 CAP7T8I0J8: - x0t8 + f7t8i0j8 + f7t8i8j0 <= 0
 CAP7T8I4J9: - x4t9 + f7t8i4j9 + f7t8i9j4 <= 0
 CAP7T8I0J7: - x0t7 + f7t8i0j7 + f7t8i7j0 <= 0
 CAP7T8I0J4: - x0t4 + f7t8i0j4 + f7t8i4j0 <= 0
 CAP7T8I6J7: - x6t7 + f7t8i6j7 + f7t8i7j6 <= 0
 CAP7T8I2J7: - x2t7 + f7t8i2j7 + f7t8i7j2 <= 0
 CAP7T8I1J7: - x1t7 + f7t8i1j7 + f7t8i7j1 <= 0
 CAP7T8I0J5: - x0t5 + f7t8i0j5 + f7t8i5j0 <= 0
 CAP7T8I1J9: - x1t9 + f7t8i1j9 + f7t8i9j1 <= 0
 CAP7T5I7J8: - x7t8 + f7t5i7j8 + f7t5i8j7 <= 0
 CAP7T5I8J5: - x8t5 + f7t5i8j5 + f7t5i5j8 <= 0
 CAP7T5I5J9: - x5t9 + f7t5i5j9 + f7t5i9j5 <= 0
 CAP7T5I9J0: - x9t0 + f7t5i9j0 + f7t5i0j9 <= 0
 CAP7T5I0J6: - x0t6 + f7t5i0j6 + f7t5i6j0 <= 0
 CAP7T5I6J4: - x6t4 + f7t5i6j4 + f7t5i4j6 <= 0
 CAP7T5I4J2: - x4t2 + f7t5i4j2 + f7t5i2j4 <= 0
 CAP7T5I2J1: - x2t1 + f7t5i2j1 + f7t5i1j2 <= 0
 CAP7T5I1J3: - x1t3 + f7t5i1j3 + f7t5i3j1 <= 0
 CAP7T5I2J5: - x2t5 + f7t5i2j5 + f7t5i5j2 <= 0
 CAP7T5I0J1: - x0t1 + f7t5i0j1 + f7t5i1j0 <= 0
 CAP7T5I6J9: - x6t9 + f7t5i6j9 + f7t5i9j6 <= 0
 CAP7T5I2J3: - x2t3 + f7t5i2j3 + f7t5i3j2 <= 0
 CAP7T5I2J8: - x2t8 + f7t5i2j8 + f7t5i8j2 <= 0
 CAP7T5I4J8: - x4t8 + f7t5i4j8 + f7t5i8j4 <= 0
 CAP7T5I3J5: - x3t5 + f7t5i3j5 + f7t5i5j3 <= 0
 CAP7T5I5J7: - x5t7 + f7t5i5j7 + f7t5i7j5 <= 0
 CAP7T5I1J5: - x1t5 + f7t5i1j5 + f7t5i5j1 <= 0
 CAP7T5I1J4: - x1t4 + f7t5i1j4 + f7t5i4j1 <= 0
 CAP7T5I8J9: - x8t9 + f7t5i8j9 + f7t5i9j8 <= 0
 CAP7T5I0J3: - x0t3 + f7t5i0j3 + f7t5i3j0 <= 0
 CAP7T5I3J4: - x3t4 + f7t5i3j4 + f7t5i4j3 <= 0
 CAP7T5I6J8: - x6t8 + f7t5i6j8 + f7t5i8j6 <= 0
 CAP7T5I3J6: - x3t6 + f7t5i3j6 + f7t5i6j3 <= 0
 CAP7T5I0J2: - x0t2 + f7t5i0j2 + f7t5i2j0 <= 0
 CAP7T5I4J7: - x4t7 + f7t5i4j7 + f7t5i7j4 <= 0
 CAP7T5I3J9: - x3t9 + f7t5i3j9 + f7t5i9j3 <= 0
 CAP7T5I2J6: - x2t6 + f7t5i2j6 + f7t5i6j2 <= 0
 CAP7T5I5J6: - x5t6 + f7t5i5j6 + f7t5i6j5 <= 0
 CAP7T5I7J9: - x7t9 + f7t5i7j9 + f7t5i9j7 <= 0
 CAP7T5I3J8: - x3t8 + f7t5i3j8 + f7t5i8j3 <= 0
 CAP7T5I3J7: - x3t7 + f7t5i3j7 + f7t5i7j3 <= 0
 CAP7T5I2J9: - x2t9 + f7t5i2j9 + f7t5i9j2 <= 0
 CAP7T5I4J5: - x4t5 + f7t5i4j5 + f7t5i5j4 <= 0
 CAP7T5I1J6: - x1t6 + f7t5i1j6 + f7t5i6j1 <= 0
 CAP7T5I1J8: - x1t8 + f7t5i1j8 + f7t5i8j1 <= 0
 CAP7T5I0J8: - x0t8 + f7t5i0j8 + f7t5i8j0 <= 0
 CAP7T5I4J9: - x4t9 + f7t5i4j9 + f7t5i9j4 <= 0
 CAP7T5I0J7: - x0t7 + f7t5i0j7 + f7t5i7j0 <= 0
 CAP7T5I0J4: - x0t4 + f7t5i0j4 + f7t5i4j0 <= 0
 CAP7T5I6J7: - x6t7 + f7t5i6j7 + f7t5i7j6 <= 0
 CAP7T5I2J7: - x2t7 + f7t5i2j7 + f7t5i7j2 <= 0
 CAP7T5I1J7: - x1t7 + f7t5i1j7 + f7t5i7j1 <= 0
 CAP7T5I0J5: - x0t5 + f7t5i0j5 + f7t5i5j0 <= 0
 CAP7T5I1J9: - x1t9 + f7t5i1j9 + f7t5i9j1 <= 0
Bounds
 0 <= x7t8 <= 1
 0 <= x8t5 <= 1
 0 <= x5t9 <= 1
 0 <= x9t0 <= 1
 0 <= x0t6 <= 1
 0 <= x6t4 <= 1
 0 <= x4t2 <= 1
 0 <= x2t1 <= 1
 0 <= x1t3 <= 1
 0 <= x2t5 <= 1
 0 <= x0t1 <= 1
 0 <= x6t9 <= 1
 0 <= x2t3 <= 1
 0 <= x2t8 <= 1
 0 <= x4t8 <= 1
 0 <= x3t5 <= 1
 0 <= x5t7 <= 1
 0 <= x1t5 <= 1
 0 <= x1t4 <= 1
 0 <= x8t9 <= 1
 0 <= x0t3 <= 1
 0 <= x3t4 <= 1
 0 <= x6t8 <= 1
 0 <= x3t6 <= 1
 0 <= x0t2 <= 1
 0 <= x4t7 <= 1
 0 <= x3t9 <= 1
 0 <= x2t6 <= 1
 0 <= x5t6 <= 1
 0 <= x7t9 <= 1
 0 <= x3t8 <= 1
 0 <= x3t7 <= 1
 0 <= x2t9 <= 1
 0 <= x4t5 <= 1
 0 <= x1t6 <= 1
 0 <= x1t8 <= 1
 0 <= x0t8 <= 1
 0 <= x4t9 <= 1
 0 <= x0t7 <= 1
 0 <= x0t4 <= 1
 0 <= x6t7 <= 1
 0 <= x2t7 <= 1
 0 <= x1t7 <= 1
 0 <= x0t5 <= 1
 0 <= x1t9 <= 1
      x46 = 0
 0 <= f2t9i9j0 <= 1
 0 <= f2t9i0j9 <= 1
 0 <= f2t9i0j6 <= 1
 0 <= f2t9i6j0 <= 1
 0 <= f2t9i0j1 <= 1
 0 <= f2t9i1j0 <= 1
 0 <= f2t9i0j3 <= 1
 0 <= f2t9i3j0 <= 1
 0 <= f2t9i0j2 <= 1
 0 <= f2t9i2j0 <= 1
 0 <= f2t9i0j8 <= 1
 0 <= f2t9i8j0 <= 1
 0 <= f2t9i0j7 <= 1
 0 <= f2t9i7j0 <= 1
 0 <= f2t9i0j4 <= 1
 0 <= f2t9i4j0 <= 1
 0 <= f2t9i0j5 <= 1
 0 <= f2t9i5j0 <= 1
 0 <= f2t9i2j1 <= 1
 0 <= f2t9i1j2 <= 1
 0 <= f2t9i1j3 <= 1
 0 <= f2t9i3j1 <= 1
 0 <= f2t9i1j5 <= 1
 0 <= f2t9i5j1 <= 1
 0 <= f2t9i1j4 <= 1
 0 <= f2t9i4j1 <= 1
 0 <= f2t9i1j6 <= 1
 0 <= f2t9i6j1 <= 1
 0 <= f2t9i1j8 <= 1
 0 <= f2t9i8j1 <= 1
 0 <= f2t9i1j7 <= 1
 0 <= f2t9i7j1 <= 1
 0 <= f2t9i1j9 <= 1
 0 <= f2t9i9j1 <= 1
 0 <= f2t9i4j2 <= 1
 0 <= f2t9i2j4 <= 1
 0 <= f2t9i2j5 <= 1
 0 <= f2t9i5j2 <= 1
 0 <= f2t9i2j3 <= 1
 0 <= f2t9i3j2 <= 1
 0 <= f2t9i2j8 <= 1
 0 <= f2t9i8j2 <= 1
 0 <= f2t9i2j6 <= 1
 0 <= f2t9i6j2 <= 1
 0 <= f2t9i2j9 <= 1
 0 <= f2t9i9j2 <= 1
 0 <= f2t9i2j7 <= 1
 0 <= f2t9i7j2 <= 1
 0 <= f2t9i3j5 <= 1
 0 <= f2t9i5j3 <= 1
 0 <= f2t9i3j4 <= 1
 0 <= f2t9i4j3 <= 1
 0 <= f2t9i3j6 <= 1
 0 <= f2t9i6j3 <= 1
 0 <= f2t9i3j9 <= 1
 0 <= f2t9i9j3 <= 1
 0 <= f2t9i3j8 <= 1
 0 <= f2t9i8j3 <= 1
 0 <= f2t9i3j7 <= 1
 0 <= f2t9i7j3 <= 1
 0 <= f2t9i6j4 <= 1
 0 <= f2t9i4j6 <= 1
 0 <= f2t9i4j8 <= 1
 0 <= f2t9i8j4 <= 1
 0 <= f2t9i4j7 <= 1
 0 <= f2t9i7j4 <= 1
 0 <= f2t9i4j5 <= 1
 0 <= f2t9i5j4 <= 1
 0 <= f2t9i4j9 <= 1
 0 <= f2t9i9j4 <= 1
 0 <= f2t9i8j5 <= 1
 0 <= f2t9i5j8 <= 1
 0 <= f2t9i5j9 <= 1
 0 <= f2t9i9j5 <= 1
 0 <= f2t9i5j7 <= 1
 0 <= f2t9i7j5 <= 1
 0 <= f2t9i5j6 <= 1
 0 <= f2t9i6j5 <= 1
 0 <= f2t9i6j9 <= 1
 0 <= f2t9i9j6 <= 1
 0 <= f2t9i6j8 <= 1
 0 <= f2t9i8j6 <= 1
 0 <= f2t9i6j7 <= 1
 0 <= f2t9i7j6 <= 1
 0 <= f2t9i7j8 <= 1
 0 <= f2t9i8j7 <= 1
 0 <= f2t9i7j9 <= 1
 0 <= f2t9i9j7 <= 1
 0 <= f2t9i8j9 <= 1
 0 <= f2t9i9j8 <= 1
 0 <= f1t3i9j0 <= 1
 0 <= f1t3i0j9 <= 1
 0 <= f1t3i0j6 <= 1
 0 <= f1t3i6j0 <= 1
 0 <= f1t3i0j1 <= 1
 0 <= f1t3i1j0 <= 1
 0 <= f1t3i0j3 <= 1
 0 <= f1t3i3j0 <= 1
 0 <= f1t3i0j2 <= 1
 0 <= f1t3i2j0 <= 1
 0 <= f1t3i0j8 <= 1
 0 <= f1t3i8j0 <= 1
 0 <= f1t3i0j7 <= 1
 0 <= f1t3i7j0 <= 1
 0 <= f1t3i0j4 <= 1
 0 <= f1t3i4j0 <= 1
 0 <= f1t3i0j5 <= 1
 0 <= f1t3i5j0 <= 1
 0 <= f1t3i2j1 <= 1
 0 <= f1t3i1j2 <= 1
 0 <= f1t3i1j3 <= 1
 0 <= f1t3i3j1 <= 1
 0 <= f1t3i1j5 <= 1
 0 <= f1t3i5j1 <= 1
 0 <= f1t3i1j4 <= 1
 0 <= f1t3i4j1 <= 1
 0 <= f1t3i1j6 <= 1
 0 <= f1t3i6j1 <= 1
 0 <= f1t3i1j8 <= 1
 0 <= f1t3i8j1 <= 1
 0 <= f1t3i1j7 <= 1
 0 <= f1t3i7j1 <= 1
 0 <= f1t3i1j9 <= 1
 0 <= f1t3i9j1 <= 1
 0 <= f1t3i4j2 <= 1
 0 <= f1t3i2j4 <= 1
 0 <= f1t3i2j5 <= 1
 0 <= f1t3i5j2 <= 1
 0 <= f1t3i2j3 <= 1
 0 <= f1t3i3j2 <= 1
 0 <= f1t3i2j8 <= 1
 0 <= f1t3i8j2 <= 1
 0 <= f1t3i2j6 <= 1
 0 <= f1t3i6j2 <= 1
 0 <= f1t3i2j9 <= 1
 0 <= f1t3i9j2 <= 1
 0 <= f1t3i2j7 <= 1
 0 <= f1t3i7j2 <= 1
 0 <= f1t3i3j5 <= 1
 0 <= f1t3i5j3 <= 1
 0 <= f1t3i3j4 <= 1
 0 <= f1t3i4j3 <= 1
 0 <= f1t3i3j6 <= 1
 0 <= f1t3i6j3 <= 1
 0 <= f1t3i3j9 <= 1
 0 <= f1t3i9j3 <= 1
 0 <= f1t3i3j8 <= 1
 0 <= f1t3i8j3 <= 1
 0 <= f1t3i3j7 <= 1
 0 <= f1t3i7j3 <= 1
 0 <= f1t3i6j4 <= 1
 0 <= f1t3i4j6 <= 1
 0 <= f1t3i4j8 <= 1
 0 <= f1t3i8j4 <= 1
 0 <= f1t3i4j7 <= 1
 0 <= f1t3i7j4 <= 1
 0 <= f1t3i4j5 <= 1
 0 <= f1t3i5j4 <= 1
 0 <= f1t3i4j9 <= 1
 0 <= f1t3i9j4 <= 1
 0 <= f1t3i8j5 <= 1
 0 <= f1t3i5j8 <= 1
 0 <= f1t3i5j9 <= 1
 0 <= f1t3i9j5 <= 1
 0 <= f1t3i5j7 <= 1
 0 <= f1t3i7j5 <= 1
 0 <= f1t3i5j6 <= 1
 0 <= f1t3i6j5 <= 1
 0 <= f1t3i6j9 <= 1
 0 <= f1t3i9j6 <= 1
 0 <= f1t3i6j8 <= 1
 0 <= f1t3i8j6 <= 1
 0 <= f1t3i6j7 <= 1
 0 <= f1t3i7j6 <= 1
 0 <= f1t3i7j8 <= 1
 0 <= f1t3i8j7 <= 1
 0 <= f1t3i7j9 <= 1
 0 <= f1t3i9j7 <= 1
 0 <= f1t3i8j9 <= 1
 0 <= f1t3i9j8 <= 1
 0 <= f7t6i9j0 <= 1
 0 <= f7t6i0j9 <= 1
 0 <= f7t6i0j6 <= 1
 0 <= f7t6i6j0 <= 1
 0 <= f7t6i0j1 <= 1
 0 <= f7t6i1j0 <= 1
 0 <= f7t6i0j3 <= 1
 0 <= f7t6i3j0 <= 1
 0 <= f7t6i0j2 <= 1
 0 <= f7t6i2j0 <= 1
 0 <= f7t6i0j8 <= 1
 0 <= f7t6i8j0 <= 1
 0 <= f7t6i0j7 <= 1
 0 <= f7t6i7j0 <= 1
 0 <= f7t6i0j4 <= 1
 0 <= f7t6i4j0 <= 1
 0 <= f7t6i0j5 <= 1
 0 <= f7t6i5j0 <= 1
 0 <= f7t6i2j1 <= 1
 0 <= f7t6i1j2 <= 1
 0 <= f7t6i1j3 <= 1
 0 <= f7t6i3j1 <= 1
 0 <= f7t6i1j5 <= 1
 0 <= f7t6i5j1 <= 1
 0 <= f7t6i1j4 <= 1
 0 <= f7t6i4j1 <= 1
 0 <= f7t6i1j6 <= 1
 0 <= f7t6i6j1 <= 1
 0 <= f7t6i1j8 <= 1
 0 <= f7t6i8j1 <= 1
 0 <= f7t6i1j7 <= 1
 0 <= f7t6i7j1 <= 1
 0 <= f7t6i1j9 <= 1
 0 <= f7t6i9j1 <= 1
 0 <= f7t6i4j2 <= 1
 0 <= f7t6i2j4 <= 1
 0 <= f7t6i2j5 <= 1
 0 <= f7t6i5j2 <= 1
 0 <= f7t6i2j3 <= 1
 0 <= f7t6i3j2 <= 1
 0 <= f7t6i2j8 <= 1
 0 <= f7t6i8j2 <= 1
 0 <= f7t6i2j6 <= 1
 0 <= f7t6i6j2 <= 1
 0 <= f7t6i2j9 <= 1
 0 <= f7t6i9j2 <= 1
 0 <= f7t6i2j7 <= 1
 0 <= f7t6i7j2 <= 1
 0 <= f7t6i3j5 <= 1
 0 <= f7t6i5j3 <= 1
 0 <= f7t6i3j4 <= 1
 0 <= f7t6i4j3 <= 1
 0 <= f7t6i3j6 <= 1
 0 <= f7t6i6j3 <= 1
 0 <= f7t6i3j9 <= 1
 0 <= f7t6i9j3 <= 1
 0 <= f7t6i3j8 <= 1
 0 <= f7t6i8j3 <= 1
 0 <= f7t6i3j7 <= 1
 0 <= f7t6i7j3 <= 1
 0 <= f7t6i6j4 <= 1
 0 <= f7t6i4j6 <= 1
 0 <= f7t6i4j8 <= 1
 0 <= f7t6i8j4 <= 1
 0 <= f7t6i4j7 <= 1
 0 <= f7t6i7j4 <= 1
 0 <= f7t6i4j5 <= 1
 0 <= f7t6i5j4 <= 1
 0 <= f7t6i4j9 <= 1
 0 <= f7t6i9j4 <= 1
 0 <= f7t6i8j5 <= 1
 0 <= f7t6i5j8 <= 1
 0 <= f7t6i5j9 <= 1
 0 <= f7t6i9j5 <= 1
 0 <= f7t6i5j7 <= 1
 0 <= f7t6i7j5 <= 1
 0 <= f7t6i5j6 <= 1
 0 <= f7t6i6j5 <= 1
 0 <= f7t6i6j9 <= 1
 0 <= f7t6i9j6 <= 1
 0 <= f7t6i6j8 <= 1
 0 <= f7t6i8j6 <= 1
 0 <= f7t6i6j7 <= 1
 0 <= f7t6i7j6 <= 1
 0 <= f7t6i7j8 <= 1
 0 <= f7t6i8j7 <= 1
 0 <= f7t6i7j9 <= 1
 0 <= f7t6i9j7 <= 1
 0 <= f7t6i8j9 <= 1
 0 <= f7t6i9j8 <= 1
 0 <= f7t0i9j0 <= 1
 0 <= f7t0i0j9 <= 1
 0 <= f7t0i0j6 <= 1
 0 <= f7t0i6j0 <= 1
 0 <= f7t0i0j1 <= 1
 0 <= f7t0i1j0 <= 1
 0 <= f7t0i0j3 <= 1
 0 <= f7t0i3j0 <= 1
 0 <= f7t0i0j2 <= 1
 0 <= f7t0i2j0 <= 1
 0 <= f7t0i0j8 <= 1
 0 <= f7t0i8j0 <= 1
 0 <= f7t0i0j7 <= 1
 0 <= f7t0i7j0 <= 1
 0 <= f7t0i0j4 <= 1
 0 <= f7t0i4j0 <= 1
 0 <= f7t0i0j5 <= 1
 0 <= f7t0i5j0 <= 1
 0 <= f7t0i2j1 <= 1
 0 <= f7t0i1j2 <= 1
 0 <= f7t0i1j3 <= 1
 0 <= f7t0i3j1 <= 1
 0 <= f7t0i1j5 <= 1
 0 <= f7t0i5j1 <= 1
 0 <= f7t0i1j4 <= 1
 0 <= f7t0i4j1 <= 1
 0 <= f7t0i1j6 <= 1
 0 <= f7t0i6j1 <= 1
 0 <= f7t0i1j8 <= 1
 0 <= f7t0i8j1 <= 1
 0 <= f7t0i1j7 <= 1
 0 <= f7t0i7j1 <= 1
 0 <= f7t0i1j9 <= 1
 0 <= f7t0i9j1 <= 1
 0 <= f7t0i4j2 <= 1
 0 <= f7t0i2j4 <= 1
 0 <= f7t0i2j5 <= 1
 0 <= f7t0i5j2 <= 1
 0 <= f7t0i2j3 <= 1
 0 <= f7t0i3j2 <= 1
 0 <= f7t0i2j8 <= 1
 0 <= f7t0i8j2 <= 1
 0 <= f7t0i2j6 <= 1
 0 <= f7t0i6j2 <= 1
 0 <= f7t0i2j9 <= 1
 0 <= f7t0i9j2 <= 1
 0 <= f7t0i2j7 <= 1
 0 <= f7t0i7j2 <= 1
 0 <= f7t0i3j5 <= 1
 0 <= f7t0i5j3 <= 1
 0 <= f7t0i3j4 <= 1
 0 <= f7t0i4j3 <= 1
 0 <= f7t0i3j6 <= 1
 0 <= f7t0i6j3 <= 1
 0 <= f7t0i3j9 <= 1
 0 <= f7t0i9j3 <= 1
 0 <= f7t0i3j8 <= 1
 0 <= f7t0i8j3 <= 1
 0 <= f7t0i3j7 <= 1
 0 <= f7t0i7j3 <= 1
 0 <= f7t0i6j4 <= 1
 0 <= f7t0i4j6 <= 1
 0 <= f7t0i4j8 <= 1
 0 <= f7t0i8j4 <= 1
 0 <= f7t0i4j7 <= 1
 0 <= f7t0i7j4 <= 1
 0 <= f7t0i4j5 <= 1
 0 <= f7t0i5j4 <= 1
 0 <= f7t0i4j9 <= 1
 0 <= f7t0i9j4 <= 1
 0 <= f7t0i8j5 <= 1
 0 <= f7t0i5j8 <= 1
 0 <= f7t0i5j9 <= 1
 0 <= f7t0i9j5 <= 1
 0 <= f7t0i5j7 <= 1
 0 <= f7t0i7j5 <= 1
 0 <= f7t0i5j6 <= 1
 0 <= f7t0i6j5 <= 1
 0 <= f7t0i6j9 <= 1
 0 <= f7t0i9j6 <= 1
 0 <= f7t0i6j8 <= 1
 0 <= f7t0i8j6 <= 1
 0 <= f7t0i6j7 <= 1
 0 <= f7t0i7j6 <= 1
 0 <= f7t0i7j8 <= 1
 0 <= f7t0i8j7 <= 1
 0 <= f7t0i7j9 <= 1
 0 <= f7t0i9j7 <= 1
 0 <= f7t0i8j9 <= 1
 0 <= f7t0i9j8 <= 1
 0 <= f7t4i9j0 <= 1
 0 <= f7t4i0j9 <= 1
 0 <= f7t4i0j6 <= 1
 0 <= f7t4i6j0 <= 1
 0 <= f7t4i0j1 <= 1
 0 <= f7t4i1j0 <= 1
 0 <= f7t4i0j3 <= 1
 0 <= f7t4i3j0 <= 1
 0 <= f7t4i0j2 <= 1
 0 <= f7t4i2j0 <= 1
 0 <= f7t4i0j8 <= 1
 0 <= f7t4i8j0 <= 1
 0 <= f7t4i0j7 <= 1
 0 <= f7t4i7j0 <= 1
 0 <= f7t4i0j4 <= 1
 0 <= f7t4i4j0 <= 1
 0 <= f7t4i0j5 <= 1
 0 <= f7t4i5j0 <= 1
 0 <= f7t4i2j1 <= 1
 0 <= f7t4i1j2 <= 1
 0 <= f7t4i1j3 <= 1
 0 <= f7t4i3j1 <= 1
 0 <= f7t4i1j5 <= 1
 0 <= f7t4i5j1 <= 1
 0 <= f7t4i1j4 <= 1
 0 <= f7t4i4j1 <= 1
 0 <= f7t4i1j6 <= 1
 0 <= f7t4i6j1 <= 1
 0 <= f7t4i1j8 <= 1
 0 <= f7t4i8j1 <= 1
 0 <= f7t4i1j7 <= 1
 0 <= f7t4i7j1 <= 1
 0 <= f7t4i1j9 <= 1
 0 <= f7t4i9j1 <= 1
 0 <= f7t4i4j2 <= 1
 0 <= f7t4i2j4 <= 1
 0 <= f7t4i2j5 <= 1
 0 <= f7t4i5j2 <= 1
 0 <= f7t4i2j3 <= 1
 0 <= f7t4i3j2 <= 1
 0 <= f7t4i2j8 <= 1
 0 <= f7t4i8j2 <= 1
 0 <= f7t4i2j6 <= 1
 0 <= f7t4i6j2 <= 1
 0 <= f7t4i2j9 <= 1
 0 <= f7t4i9j2 <= 1
 0 <= f7t4i2j7 <= 1
 0 <= f7t4i7j2 <= 1
 0 <= f7t4i3j5 <= 1
 0 <= f7t4i5j3 <= 1
 0 <= f7t4i3j4 <= 1
 0 <= f7t4i4j3 <= 1
 0 <= f7t4i3j6 <= 1
 0 <= f7t4i6j3 <= 1
 0 <= f7t4i3j9 <= 1
 0 <= f7t4i9j3 <= 1
 0 <= f7t4i3j8 <= 1
 0 <= f7t4i8j3 <= 1
 0 <= f7t4i3j7 <= 1
 0 <= f7t4i7j3 <= 1
 0 <= f7t4i6j4 <= 1
 0 <= f7t4i4j6 <= 1
 0 <= f7t4i4j8 <= 1
 0 <= f7t4i8j4 <= 1
 0 <= f7t4i4j7 <= 1
 0 <= f7t4i7j4 <= 1
 0 <= f7t4i4j5 <= 1
 0 <= f7t4i5j4 <= 1
 0 <= f7t4i4j9 <= 1
 0 <= f7t4i9j4 <= 1
 0 <= f7t4i8j5 <= 1
 0 <= f7t4i5j8 <= 1
 0 <= f7t4i5j9 <= 1
 0 <= f7t4i9j5 <= 1
 0 <= f7t4i5j7 <= 1
 0 <= f7t4i7j5 <= 1
 0 <= f7t4i5j6 <= 1
 0 <= f7t4i6j5 <= 1
 0 <= f7t4i6j9 <= 1
 0 <= f7t4i9j6 <= 1
 0 <= f7t4i6j8 <= 1
 0 <= f7t4i8j6 <= 1
 0 <= f7t4i6j7 <= 1
 0 <= f7t4i7j6 <= 1
 0 <= f7t4i7j8 <= 1
 0 <= f7t4i8j7 <= 1
 0 <= f7t4i7j9 <= 1
 0 <= f7t4i9j7 <= 1
 0 <= f7t4i8j9 <= 1
 0 <= f7t4i9j8 <= 1
 0 <= f7t8i9j0 <= 1
 0 <= f7t8i0j9 <= 1
 0 <= f7t8i0j6 <= 1
 0 <= f7t8i6j0 <= 1
 0 <= f7t8i0j1 <= 1
 0 <= f7t8i1j0 <= 1
 0 <= f7t8i0j3 <= 1
 0 <= f7t8i3j0 <= 1
 0 <= f7t8i0j2 <= 1
 0 <= f7t8i2j0 <= 1
 0 <= f7t8i0j8 <= 1
 0 <= f7t8i8j0 <= 1
 0 <= f7t8i0j7 <= 1
 0 <= f7t8i7j0 <= 1
 0 <= f7t8i0j4 <= 1
 0 <= f7t8i4j0 <= 1
 0 <= f7t8i0j5 <= 1
 0 <= f7t8i5j0 <= 1
 0 <= f7t8i2j1 <= 1
 0 <= f7t8i1j2 <= 1
 0 <= f7t8i1j3 <= 1
 0 <= f7t8i3j1 <= 1
 0 <= f7t8i1j5 <= 1
 0 <= f7t8i5j1 <= 1
 0 <= f7t8i1j4 <= 1
 0 <= f7t8i4j1 <= 1
 0 <= f7t8i1j6 <= 1
 0 <= f7t8i6j1 <= 1
 0 <= f7t8i1j8 <= 1
 0 <= f7t8i8j1 <= 1
 0 <= f7t8i1j7 <= 1
 0 <= f7t8i7j1 <= 1
 0 <= f7t8i1j9 <= 1
 0 <= f7t8i9j1 <= 1
 0 <= f7t8i4j2 <= 1
 0 <= f7t8i2j4 <= 1
 0 <= f7t8i2j5 <= 1
 0 <= f7t8i5j2 <= 1
 0 <= f7t8i2j3 <= 1
 0 <= f7t8i3j2 <= 1
 0 <= f7t8i2j8 <= 1
 0 <= f7t8i8j2 <= 1
 0 <= f7t8i2j6 <= 1
 0 <= f7t8i6j2 <= 1
 0 <= f7t8i2j9 <= 1
 0 <= f7t8i9j2 <= 1
 0 <= f7t8i2j7 <= 1
 0 <= f7t8i7j2 <= 1
 0 <= f7t8i3j5 <= 1
 0 <= f7t8i5j3 <= 1
 0 <= f7t8i3j4 <= 1
 0 <= f7t8i4j3 <= 1
 0 <= f7t8i3j6 <= 1
 0 <= f7t8i6j3 <= 1
 0 <= f7t8i3j9 <= 1
 0 <= f7t8i9j3 <= 1
 0 <= f7t8i3j8 <= 1
 0 <= f7t8i8j3 <= 1
 0 <= f7t8i3j7 <= 1
 0 <= f7t8i7j3 <= 1
 0 <= f7t8i6j4 <= 1
 0 <= f7t8i4j6 <= 1
 0 <= f7t8i4j8 <= 1
 0 <= f7t8i8j4 <= 1
 0 <= f7t8i4j7 <= 1
 0 <= f7t8i7j4 <= 1
 0 <= f7t8i4j5 <= 1
 0 <= f7t8i5j4 <= 1
 0 <= f7t8i4j9 <= 1
 0 <= f7t8i9j4 <= 1
 0 <= f7t8i8j5 <= 1
 0 <= f7t8i5j8 <= 1
 0 <= f7t8i5j9 <= 1
 0 <= f7t8i9j5 <= 1
 0 <= f7t8i5j7 <= 1
 0 <= f7t8i7j5 <= 1
 0 <= f7t8i5j6 <= 1
 0 <= f7t8i6j5 <= 1
 0 <= f7t8i6j9 <= 1
 0 <= f7t8i9j6 <= 1
 0 <= f7t8i6j8 <= 1
 0 <= f7t8i8j6 <= 1
 0 <= f7t8i6j7 <= 1
 0 <= f7t8i7j6 <= 1
 0 <= f7t8i7j8 <= 1
 0 <= f7t8i8j7 <= 1
 0 <= f7t8i7j9 <= 1
 0 <= f7t8i9j7 <= 1
 0 <= f7t8i8j9 <= 1
 0 <= f7t8i9j8 <= 1
 0 <= f7t5i9j0 <= 1
 0 <= f7t5i0j9 <= 1
 0 <= f7t5i0j6 <= 1
 0 <= f7t5i6j0 <= 1
 0 <= f7t5i0j1 <= 1
 0 <= f7t5i1j0 <= 1
 0 <= f7t5i0j3 <= 1
 0 <= f7t5i3j0 <= 1
 0 <= f7t5i0j2 <= 1
 0 <= f7t5i2j0 <= 1
 0 <= f7t5i0j8 <= 1
 0 <= f7t5i8j0 <= 1
 0 <= f7t5i0j7 <= 1
 0 <= f7t5i7j0 <= 1
 0 <= f7t5i0j4 <= 1
 0 <= f7t5i4j0 <= 1
 0 <= f7t5i0j5 <= 1
 0 <= f7t5i5j0 <= 1
 0 <= f7t5i2j1 <= 1
 0 <= f7t5i1j2 <= 1
 0 <= f7t5i1j3 <= 1
 0 <= f7t5i3j1 <= 1
 0 <= f7t5i1j5 <= 1
 0 <= f7t5i5j1 <= 1
 0 <= f7t5i1j4 <= 1
 0 <= f7t5i4j1 <= 1
 0 <= f7t5i1j6 <= 1
 0 <= f7t5i6j1 <= 1
 0 <= f7t5i1j8 <= 1
 0 <= f7t5i8j1 <= 1
 0 <= f7t5i1j7 <= 1
 0 <= f7t5i7j1 <= 1
 0 <= f7t5i1j9 <= 1
 0 <= f7t5i9j1 <= 1
 0 <= f7t5i4j2 <= 1
 0 <= f7t5i2j4 <= 1
 0 <= f7t5i2j5 <= 1
 0 <= f7t5i5j2 <= 1
 0 <= f7t5i2j3 <= 1
 0 <= f7t5i3j2 <= 1
 0 <= f7t5i2j8 <= 1
 0 <= f7t5i8j2 <= 1
 0 <= f7t5i2j6 <= 1
 0 <= f7t5i6j2 <= 1
 0 <= f7t5i2j9 <= 1
 0 <= f7t5i9j2 <= 1
 0 <= f7t5i2j7 <= 1
 0 <= f7t5i7j2 <= 1
 0 <= f7t5i3j5 <= 1
 0 <= f7t5i5j3 <= 1
 0 <= f7t5i3j4 <= 1
 0 <= f7t5i4j3 <= 1
 0 <= f7t5i3j6 <= 1
 0 <= f7t5i6j3 <= 1
 0 <= f7t5i3j9 <= 1
 0 <= f7t5i9j3 <= 1
 0 <= f7t5i3j8 <= 1
 0 <= f7t5i8j3 <= 1
 0 <= f7t5i3j7 <= 1
 0 <= f7t5i7j3 <= 1
 0 <= f7t5i6j4 <= 1
 0 <= f7t5i4j6 <= 1
 0 <= f7t5i4j8 <= 1
 0 <= f7t5i8j4 <= 1
 0 <= f7t5i4j7 <= 1
 0 <= f7t5i7j4 <= 1
 0 <= f7t5i4j5 <= 1
 0 <= f7t5i5j4 <= 1
 0 <= f7t5i4j9 <= 1
 0 <= f7t5i9j4 <= 1
 0 <= f7t5i8j5 <= 1
 0 <= f7t5i5j8 <= 1
 0 <= f7t5i5j9 <= 1
 0 <= f7t5i9j5 <= 1
 0 <= f7t5i5j7 <= 1
 0 <= f7t5i7j5 <= 1
 0 <= f7t5i5j6 <= 1
 0 <= f7t5i6j5 <= 1
 0 <= f7t5i6j9 <= 1
 0 <= f7t5i9j6 <= 1
 0 <= f7t5i6j8 <= 1
 0 <= f7t5i8j6 <= 1
 0 <= f7t5i6j7 <= 1
 0 <= f7t5i7j6 <= 1
 0 <= f7t5i7j8 <= 1
 0 <= f7t5i8j7 <= 1
 0 <= f7t5i7j9 <= 1
 0 <= f7t5i9j7 <= 1
 0 <= f7t5i8j9 <= 1
 0 <= f7t5i9j8 <= 1
Binaries
 x7t8  x8t5  x5t9  x9t0  x0t6  x6t4  x4t2  x2t1  x1t3  x2t5  x0t1  x6t9  x2t3 
 x2t8  x4t8  x3t5  x5t7  x1t5  x1t4  x8t9  x0t3  x3t4  x6t8  x3t6  x0t2  x4t7 
 x3t9  x2t6  x5t6  x7t9  x3t8  x3t7  x2t9  x4t5  x1t6  x1t8  x0t8  x4t9  x0t7 
 x0t4  x6t7  x2t7  x1t7  x0t5  x1t9 
End
