\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj: 28 x7t2 + 13 x2t0 + 34 x0t1 + 18 x1t6 + 14 x6t5 + 8 x5t4 + 6 x4t8
      + 24 x8t9 + 5 x9t3 + 40 x0t5 + 20 x0t3 + 13 x1t4 + 37 x3t6 + 46 x4t6
      + 34 x3t7 + 33 x3t5 + 11 x0t7 + 42 x1t2 + 38 x5t8 + 11 x6t9 + 48 x7t8
      + 30 x2t3 + 16 x0t8 + 24 x2t6 + 44 x2t8 + 32 x5t9 + 47 x1t7 + 11 x4t7
      + 18 x3t8 + 22 x2t5 + 46 x7t9 + 7 x1t5 + 11 x0t9 + 37 x1t8 + 15 x0t4
      + 47 x4t9 + 50 x6t8 + 23 x2t4 + 22 x2t9 + 49 x1t3 + 18 x5t7 + 11 x3t4
      + 27 x1t9 + 14 x0t6 + 49 x6t7 + x46
Subject To
 BAL4T3AT0:  - f4t3i2j0 + f4t3i0j2 + f4t3i0j1 - f4t3i1j0 + f4t3i0j5 - f4t3i5j0
             + f4t3i0j3 - f4t3i3j0 + f4t3i0j7 - f4t3i7j0 + f4t3i0j8 - f4t3i8j0
             + f4t3i0j9 - f4t3i9j0 + f4t3i0j4 - f4t3i4j0 + f4t3i0j6 - f4t3i6j0
              = 0
 BAL4T3AT1:  - f4t3i0j1 + f4t3i1j0 + f4t3i1j6 - f4t3i6j1 + f4t3i1j4 - f4t3i4j1
             + f4t3i1j2 - f4t3i2j1 + f4t3i1j7 - f4t3i7j1 + f4t3i1j5 - f4t3i5j1
             + f4t3i1j8 - f4t3i8j1 + f4t3i1j3 - f4t3i3j1 + f4t3i1j9 - f4t3i9j1
              = 0
 BAL4T3AT2:  f4t3i2j0 - f4t3i0j2 - f4t3i1j2 + f4t3i2j1 - f4t3i7j2 + f4t3i2j7
             + f4t3i2j3 - f4t3i3j2 + f4t3i2j6 - f4t3i6j2 + f4t3i2j8 - f4t3i8j2
             + f4t3i2j5 - f4t3i5j2 + f4t3i2j4 - f4t3i4j2 + f4t3i2j9 - f4t3i9j2
              = 0
 BAL4T3AT3:  - f4t3i0j3 + f4t3i3j0 - f4t3i1j3 + f4t3i3j1 - f4t3i2j3 + f4t3i3j2
             - f4t3i9j3 + f4t3i3j9 + f4t3i3j6 - f4t3i6j3 + f4t3i3j7 - f4t3i7j3
             + f4t3i3j5 - f4t3i5j3 + f4t3i3j8 - f4t3i8j3 + f4t3i3j4 - f4t3i4j3
              = -1
 BAL4T3AT4:  - f4t3i0j4 + f4t3i4j0 - f4t3i1j4 + f4t3i4j1 - f4t3i2j4 + f4t3i4j2
             - f4t3i3j4 + f4t3i4j3 - f4t3i5j4 + f4t3i4j5 + f4t3i4j8 - f4t3i8j4
             + f4t3i4j6 - f4t3i6j4 + f4t3i4j7 - f4t3i7j4 + f4t3i4j9 - f4t3i9j4
              = 1
 BAL4T3AT5:  - f4t3i0j5 + f4t3i5j0 - f4t3i1j5 + f4t3i5j1 - f4t3i2j5 + f4t3i5j2
             - f4t3i3j5 + f4t3i5j3 + f4t3i5j4 - f4t3i4j5 - f4t3i6j5 + f4t3i5j6
             + f4t3i5j8 - f4t3i8j5 + f4t3i5j9 - f4t3i9j5 + f4t3i5j7 - f4t3i7j5
              = 0
 BAL4T3AT6:  - f4t3i0j6 + f4t3i6j0 - f4t3i1j6 + f4t3i6j1 - f4t3i2j6 + f4t3i6j2
             - f4t3i3j6 + f4t3i6j3 - f4t3i4j6 + f4t3i6j4 + f4t3i6j5 - f4t3i5j6
             + f4t3i6j9 - f4t3i9j6 + f4t3i6j8 - f4t3i8j6 + f4t3i6j7 - f4t3i7j6
              = 0
 BAL4T3AT7:  - f4t3i0j7 + f4t3i7j0 - f4t3i1j7 + f4t3i7j1 + f4t3i7j2 - f4t3i2j7
             - f4t3i3j7 + f4t3i7j3 - f4t3i4j7 + f4t3i7j4 - f4t3i5j7 + f4t3i7j5
             - f4t3i6j7 + f4t3i7j6 + f4t3i7j8 - f4t3i8j7 + f4t3i7j9 - f4t3i9j7
              = 0
 BAL4T3AT8:  - f4t3i0j8 + f4t3i8j0 - f4t3i1j8 + f4t3i8j1 - f4t3i2j8 + f4t3i8j2
             - f4t3i3j8 + f4t3i8j3 - f4t3i4j8 + f4t3i8j4 - f4t3i5j8 + f4t3i8j5
             - f4t3i6j8 + f4t3i8j6 - f4t3i7j8 + f4t3i8j7 + f4t3i8j9 - f4t3i9j8
              = 0
 BAL4T3AT9:  - f4t3i0j9 + f4t3i9j0 - f4t3i1j9 + f4t3i9j1 - f4t3i2j9 + f4t3i9j2
             + f4t3i9j3 - f4t3i3j9 - f4t3i4j9 + f4t3i9j4 - f4t3i5j9 + f4t3i9j5
             - f4t3i6j9 + f4t3i9j6 - f4t3i7j9 + f4t3i9j7 - f4t3i8j9 + f4t3i9j8
              = 0
 BAL7T6AT0:  - f7t6i2j0 + f7t6i0j2 + f7t6i0j1 - f7t6i1j0 + f7t6i0j5 - f7t6i5j0
             + f7t6i0j3 - f7t6i3j0 + f7t6i0j7 - f7t6i7j0 + f7t6i0j8 - f7t6i8j0
             + f7t6i0j9 - f7t6i9j0 + f7t6i0j4 - f7t6i4j0 + f7t6i0j6 - f7t6i6j0
              = 0
 BAL7T6AT1:  - f7t6i0j1 + f7t6i1j0 + f7t6i1j6 - f7t6i6j1 + f7t6i1j4 - f7t6i4j1
             + f7t6i1j2 - f7t6i2j1 + f7t6i1j7 - f7t6i7j1 + f7t6i1j5 - f7t6i5j1
             + f7t6i1j8 - f7t6i8j1 + f7t6i1j3 - f7t6i3j1 + f7t6i1j9 - f7t6i9j1
              = 0
 BAL7T6AT2:  f7t6i2j0 - f7t6i0j2 - f7t6i1j2 + f7t6i2j1 - f7t6i7j2 + f7t6i2j7
             + f7t6i2j3 - f7t6i3j2 + f7t6i2j6 - f7t6i6j2 + f7t6i2j8 - f7t6i8j2
             + f7t6i2j5 - f7t6i5j2 + f7t6i2j4 - f7t6i4j2 + f7t6i2j9 - f7t6i9j2
              = 0
 BAL7T6AT3:  - f7t6i0j3 + f7t6i3j0 - f7t6i1j3 + f7t6i3j1 - f7t6i2j3 + f7t6i3j2
             - f7t6i9j3 + f7t6i3j9 + f7t6i3j6 - f7t6i6j3 + f7t6i3j7 - f7t6i7j3
             + f7t6i3j5 - f7t6i5j3 + f7t6i3j8 - f7t6i8j3 + f7t6i3j4 - f7t6i4j3
              = 0
 BAL7T6AT4:  - f7t6i0j4 + f7t6i4j0 - f7t6i1j4 + f7t6i4j1 - f7t6i2j4 + f7t6i4j2
             - f7t6i3j4 + f7t6i4j3 - f7t6i5j4 + f7t6i4j5 + f7t6i4j8 - f7t6i8j4
             + f7t6i4j6 - f7t6i6j4 + f7t6i4j7 - f7t6i7j4 + f7t6i4j9 - f7t6i9j4
              = 0
 BAL7T6AT5:  - f7t6i0j5 + f7t6i5j0 - f7t6i1j5 + f7t6i5j1 - f7t6i2j5 + f7t6i5j2
             - f7t6i3j5 + f7t6i5j3 + f7t6i5j4 - f7t6i4j5 - f7t6i6j5 + f7t6i5j6
             + f7t6i5j8 - f7t6i8j5 + f7t6i5j9 - f7t6i9j5 + f7t6i5j7 - f7t6i7j5
              = 0
 BAL7T6AT6:  - f7t6i0j6 + f7t6i6j0 - f7t6i1j6 + f7t6i6j1 - f7t6i2j6 + f7t6i6j2
             - f7t6i3j6 + f7t6i6j3 - f7t6i4j6 + f7t6i6j4 + f7t6i6j5 - f7t6i5j6
             + f7t6i6j9 - f7t6i9j6 + f7t6i6j8 - f7t6i8j6 + f7t6i6j7 - f7t6i7j6
              = -1
 BAL7T6AT7:  - f7t6i0j7 + f7t6i7j0 - f7t6i1j7 + f7t6i7j1 + f7t6i7j2 - f7t6i2j7
             - f7t6i3j7 + f7t6i7j3 - f7t6i4j7 + f7t6i7j4 - f7t6i5j7 + f7t6i7j5
             - f7t6i6j7 + f7t6i7j6 + f7t6i7j8 - f7t6i8j7 + f7t6i7j9 - f7t6i9j7
              = 1
 BAL7T6AT8:  - f7t6i0j8 + f7t6i8j0 - f7t6i1j8 + f7t6i8j1 - f7t6i2j8 + f7t6i8j2
             - f7t6i3j8 + f7t6i8j3 - f7t6i4j8 + f7t6i8j4 - f7t6i5j8 + f7t6i8j5
             - f7t6i6j8 + f7t6i8j6 - f7t6i7j8 + f7t6i8j7 + f7t6i8j9 - f7t6i9j8
              = 0
 BAL7T6AT9:  - f7t6i0j9 + f7t6i9j0 - f7t6i1j9 + f7t6i9j1 - f7t6i2j9 + f7t6i9j2
             + f7t6i9j3 - f7t6i3j9 - f7t6i4j9 + f7t6i9j4 - f7t6i5j9 + f7t6i9j5
             - f7t6i6j9 + f7t6i9j6 - f7t6i7j9 + f7t6i9j7 - f7t6i8j9 + f7t6i9j8
              = 0
 BAL5T9AT0:  - f5t9i2j0 + f5t9i0j2 + f5t9i0j1 - f5t9i1j0 + f5t9i0j5 - f5t9i5j0
             + f5t9i0j3 - f5t9i3j0 + f5t9i0j7 - f5t9i7j0 + f5t9i0j8 - f5t9i8j0
             + f5t9i0j9 - f5t9i9j0 + f5t9i0j4 - f5t9i4j0 + f5t9i0j6 - f5t9i6j0
              = 0
 BAL5T9AT1:  - f5t9i0j1 + f5t9i1j0 + f5t9i1j6 - f5t9i6j1 + f5t9i1j4 - f5t9i4j1
             + f5t9i1j2 - f5t9i2j1 + f5t9i1j7 - f5t9i7j1 + f5t9i1j5 - f5t9i5j1
             + f5t9i1j8 - f5t9i8j1 + f5t9i1j3 - f5t9i3j1 + f5t9i1j9 - f5t9i9j1
              = 0
 BAL5T9AT2:  f5t9i2j0 - f5t9i0j2 - f5t9i1j2 + f5t9i2j1 - f5t9i7j2 + f5t9i2j7
             + f5t9i2j3 - f5t9i3j2 + f5t9i2j6 - f5t9i6j2 + f5t9i2j8 - f5t9i8j2
             + f5t9i2j5 - f5t9i5j2 + f5t9i2j4 - f5t9i4j2 + f5t9i2j9 - f5t9i9j2
              = 0
 BAL5T9AT3:  - f5t9i0j3 + f5t9i3j0 - f5t9i1j3 + f5t9i3j1 - f5t9i2j3 + f5t9i3j2
             - f5t9i9j3 + f5t9i3j9 + f5t9i3j6 - f5t9i6j3 + f5t9i3j7 - f5t9i7j3
             + f5t9i3j5 - f5t9i5j3 + f5t9i3j8 - f5t9i8j3 + f5t9i3j4 - f5t9i4j3
              = 0
 BAL5T9AT4:  - f5t9i0j4 + f5t9i4j0 - f5t9i1j4 + f5t9i4j1 - f5t9i2j4 + f5t9i4j2
             - f5t9i3j4 + f5t9i4j3 - f5t9i5j4 + f5t9i4j5 + f5t9i4j8 - f5t9i8j4
             + f5t9i4j6 - f5t9i6j4 + f5t9i4j7 - f5t9i7j4 + f5t9i4j9 - f5t9i9j4
              = 0
 BAL5T9AT5:  - f5t9i0j5 + f5t9i5j0 - f5t9i1j5 + f5t9i5j1 - f5t9i2j5 + f5t9i5j2
             - f5t9i3j5 + f5t9i5j3 + f5t9i5j4 - f5t9i4j5 - f5t9i6j5 + f5t9i5j6
             + f5t9i5j8 - f5t9i8j5 + f5t9i5j9 - f5t9i9j5 + f5t9i5j7 - f5t9i7j5
              = 1
 BAL5T9AT6:  - f5t9i0j6 + f5t9i6j0 - f5t9i1j6 + f5t9i6j1 - f5t9i2j6 + f5t9i6j2
             - f5t9i3j6 + f5t9i6j3 - f5t9i4j6 + f5t9i6j4 + f5t9i6j5 - f5t9i5j6
             + f5t9i6j9 - f5t9i9j6 + f5t9i6j8 - f5t9i8j6 + f5t9i6j7 - f5t9i7j6
              = 0
 BAL5T9AT7:  - f5t9i0j7 + f5t9i7j0 - f5t9i1j7 + f5t9i7j1 + f5t9i7j2 - f5t9i2j7
             - f5t9i3j7 + f5t9i7j3 - f5t9i4j7 + f5t9i7j4 - f5t9i5j7 + f5t9i7j5
             - f5t9i6j7 + f5t9i7j6 + f5t9i7j8 - f5t9i8j7 + f5t9i7j9 - f5t9i9j7
              = 0
 BAL5T9AT8:  - f5t9i0j8 + f5t9i8j0 - f5t9i1j8 + f5t9i8j1 - f5t9i2j8 + f5t9i8j2
             - f5t9i3j8 + f5t9i8j3 - f5t9i4j8 + f5t9i8j4 - f5t9i5j8 + f5t9i8j5
             - f5t9i6j8 + f5t9i8j6 - f5t9i7j8 + f5t9i8j7 + f5t9i8j9 - f5t9i9j8
              = 0
 BAL5T9AT9:  - f5t9i0j9 + f5t9i9j0 - f5t9i1j9 + f5t9i9j1 - f5t9i2j9 + f5t9i9j2
             + f5t9i9j3 - f5t9i3j9 - f5t9i4j9 + f5t9i9j4 - f5t9i5j9 + f5t9i9j5
             - f5t9i6j9 + f5t9i9j6 - f5t9i7j9 + f5t9i9j7 - f5t9i8j9 + f5t9i9j8
              = -1
 BAL0T2AT0:  - f0t2i2j0 + f0t2i0j2 + f0t2i0j1 - f0t2i1j0 + f0t2i0j5 - f0t2i5j0
             + f0t2i0j3 - f0t2i3j0 + f0t2i0j7 - f0t2i7j0 + f0t2i0j8 - f0t2i8j0
             + f0t2i0j9 - f0t2i9j0 + f0t2i0j4 - f0t2i4j0 + f0t2i0j6 - f0t2i6j0
              = 1
 BAL0T2AT1:  - f0t2i0j1 + f0t2i1j0 + f0t2i1j6 - f0t2i6j1 + f0t2i1j4 - f0t2i4j1
             + f0t2i1j2 - f0t2i2j1 + f0t2i1j7 - f0t2i7j1 + f0t2i1j5 - f0t2i5j1
             + f0t2i1j8 - f0t2i8j1 + f0t2i1j3 - f0t2i3j1 + f0t2i1j9 - f0t2i9j1
              = 0
 BAL0T2AT2:  f0t2i2j0 - f0t2i0j2 - f0t2i1j2 + f0t2i2j1 - f0t2i7j2 + f0t2i2j7
             + f0t2i2j3 - f0t2i3j2 + f0t2i2j6 - f0t2i6j2 + f0t2i2j8 - f0t2i8j2
             + f0t2i2j5 - f0t2i5j2 + f0t2i2j4 - f0t2i4j2 + f0t2i2j9 - f0t2i9j2
              = -1
 BAL0T2AT3:  - f0t2i0j3 + f0t2i3j0 - f0t2i1j3 + f0t2i3j1 - f0t2i2j3 + f0t2i3j2
             - f0t2i9j3 + f0t2i3j9 + f0t2i3j6 - f0t2i6j3 + f0t2i3j7 - f0t2i7j3
             + f0t2i3j5 - f0t2i5j3 + f0t2i3j8 - f0t2i8j3 + f0t2i3j4 - f0t2i4j3
              = 0
 BAL0T2AT4:  - f0t2i0j4 + f0t2i4j0 - f0t2i1j4 + f0t2i4j1 - f0t2i2j4 + f0t2i4j2
             - f0t2i3j4 + f0t2i4j3 - f0t2i5j4 + f0t2i4j5 + f0t2i4j8 - f0t2i8j4
             + f0t2i4j6 - f0t2i6j4 + f0t2i4j7 - f0t2i7j4 + f0t2i4j9 - f0t2i9j4
              = 0
 BAL0T2AT5:  - f0t2i0j5 + f0t2i5j0 - f0t2i1j5 + f0t2i5j1 - f0t2i2j5 + f0t2i5j2
             - f0t2i3j5 + f0t2i5j3 + f0t2i5j4 - f0t2i4j5 - f0t2i6j5 + f0t2i5j6
             + f0t2i5j8 - f0t2i8j5 + f0t2i5j9 - f0t2i9j5 + f0t2i5j7 - f0t2i7j5
              = 0
 BAL0T2AT6:  - f0t2i0j6 + f0t2i6j0 - f0t2i1j6 + f0t2i6j1 - f0t2i2j6 + f0t2i6j2
             - f0t2i3j6 + f0t2i6j3 - f0t2i4j6 + f0t2i6j4 + f0t2i6j5 - f0t2i5j6
             + f0t2i6j9 - f0t2i9j6 + f0t2i6j8 - f0t2i8j6 + f0t2i6j7 - f0t2i7j6
              = 0
 BAL0T2AT7:  - f0t2i0j7 + f0t2i7j0 - f0t2i1j7 + f0t2i7j1 + f0t2i7j2 - f0t2i2j7
             - f0t2i3j7 + f0t2i7j3 - f0t2i4j7 + f0t2i7j4 - f0t2i5j7 + f0t2i7j5
             - f0t2i6j7 + f0t2i7j6 + f0t2i7j8 - f0t2i8j7 + f0t2i7j9 - f0t2i9j7
              = 0
 BAL0T2AT8:  - f0t2i0j8 + f0t2i8j0 - f0t2i1j8 + f0t2i8j1 - f0t2i2j8 + f0t2i8j2
             - f0t2i3j8 + f0t2i8j3 - f0t2i4j8 + f0t2i8j4 - f0t2i5j8 + f0t2i8j5
             - f0t2i6j8 + f0t2i8j6 - f0t2i7j8 + f0t2i8j7 + f0t2i8j9 - f0t2i9j8
              = 0
 BAL0T2AT9:  - f0t2i0j9 + f0t2i9j0 - f0t2i1j9 + f0t2i9j1 - f0t2i2j9 + f0t2i9j2
             + f0t2i9j3 - f0t2i3j9 - f0t2i4j9 + f0t2i9j4 - f0t2i5j9 + f0t2i9j5
             - f0t2i6j9 + f0t2i9j6 - f0t2i7j9 + f0t2i9j7 - f0t2i8j9 + f0t2i9j8
              = 0
 BAL0T8AT0:  - f0t8i2j0 + f0t8i0j2 + f0t8i0j1 - f0t8i1j0 + f0t8i0j5 - f0t8i5j0
             + f0t8i0j3 - f0t8i3j0 + f0t8i0j7 - f0t8i7j0 + f0t8i0j8 - f0t8i8j0
             + f0t8i0j9 - f0t8i9j0 + f0t8i0j4 - f0t8i4j0 + f0t8i0j6 - f0t8i6j0
              = 1
 BAL0T8AT1:  - f0t8i0j1 + f0t8i1j0 + f0t8i1j6 - f0t8i6j1 + f0t8i1j4 - f0t8i4j1
             + f0t8i1j2 - f0t8i2j1 + f0t8i1j7 - f0t8i7j1 + f0t8i1j5 - f0t8i5j1
             + f0t8i1j8 - f0t8i8j1 + f0t8i1j3 - f0t8i3j1 + f0t8i1j9 - f0t8i9j1
              = 0
 BAL0T8AT2:  f0t8i2j0 - f0t8i0j2 - f0t8i1j2 + f0t8i2j1 - f0t8i7j2 + f0t8i2j7
             + f0t8i2j3 - f0t8i3j2 + f0t8i2j6 - f0t8i6j2 + f0t8i2j8 - f0t8i8j2
             + f0t8i2j5 - f0t8i5j2 + f0t8i2j4 - f0t8i4j2 + f0t8i2j9 - f0t8i9j2
              = 0
 BAL0T8AT3:  - f0t8i0j3 + f0t8i3j0 - f0t8i1j3 + f0t8i3j1 - f0t8i2j3 + f0t8i3j2
             - f0t8i9j3 + f0t8i3j9 + f0t8i3j6 - f0t8i6j3 + f0t8i3j7 - f0t8i7j3
             + f0t8i3j5 - f0t8i5j3 + f0t8i3j8 - f0t8i8j3 + f0t8i3j4 - f0t8i4j3
              = 0
 BAL0T8AT4:  - f0t8i0j4 + f0t8i4j0 - f0t8i1j4 + f0t8i4j1 - f0t8i2j4 + f0t8i4j2
             - f0t8i3j4 + f0t8i4j3 - f0t8i5j4 + f0t8i4j5 + f0t8i4j8 - f0t8i8j4
             + f0t8i4j6 - f0t8i6j4 + f0t8i4j7 - f0t8i7j4 + f0t8i4j9 - f0t8i9j4
              = 0
 BAL0T8AT5:  - f0t8i0j5 + f0t8i5j0 - f0t8i1j5 + f0t8i5j1 - f0t8i2j5 + f0t8i5j2
             - f0t8i3j5 + f0t8i5j3 + f0t8i5j4 - f0t8i4j5 - f0t8i6j5 + f0t8i5j6
             + f0t8i5j8 - f0t8i8j5 + f0t8i5j9 - f0t8i9j5 + f0t8i5j7 - f0t8i7j5
              = 0
 BAL0T8AT6:  - f0t8i0j6 + f0t8i6j0 - f0t8i1j6 + f0t8i6j1 - f0t8i2j6 + f0t8i6j2
             - f0t8i3j6 + f0t8i6j3 - f0t8i4j6 + f0t8i6j4 + f0t8i6j5 - f0t8i5j6
             + f0t8i6j9 - f0t8i9j6 + f0t8i6j8 - f0t8i8j6 + f0t8i6j7 - f0t8i7j6
              = 0
 BAL0T8AT7:  - f0t8i0j7 + f0t8i7j0 - f0t8i1j7 + f0t8i7j1 + f0t8i7j2 - f0t8i2j7
             - f0t8i3j7 + f0t8i7j3 - f0t8i4j7 + f0t8i7j4 - f0t8i5j7 + f0t8i7j5
             - f0t8i6j7 + f0t8i7j6 + f0t8i7j8 - f0t8i8j7 + f0t8i7j9 - f0t8i9j7
              = 0
 BAL0T8AT8:  - f0t8i0j8 + f0t8i8j0 - f0t8i1j8 + f0t8i8j1 - f0t8i2j8 + f0t8i8j2
             - f0t8i3j8 + f0t8i8j3 - f0t8i4j8 + f0t8i8j4 - f0t8i5j8 + f0t8i8j5
             - f0t8i6j8 + f0t8i8j6 - f0t8i7j8 + f0t8i8j7 + f0t8i8j9 - f0t8i9j8
              = -1
 BAL0T8AT9:  - f0t8i0j9 + f0t8i9j0 - f0t8i1j9 + f0t8i9j1 - f0t8i2j9 + f0t8i9j2
             + f0t8i9j3 - f0t8i3j9 - f0t8i4j9 + f0t8i9j4 - f0t8i5j9 + f0t8i9j5
             - f0t8i6j9 + f0t8i9j6 - f0t8i7j9 + f0t8i9j7 - f0t8i8j9 + f0t8i9j8
              = 0
 BAL0T1AT0:  - f0t1i2j0 + f0t1i0j2 + f0t1i0j1 - f0t1i1j0 + f0t1i0j5 - f0t1i5j0
             + f0t1i0j3 - f0t1i3j0 + f0t1i0j7 - f0t1i7j0 + f0t1i0j8 - f0t1i8j0
             + f0t1i0j9 - f0t1i9j0 + f0t1i0j4 - f0t1i4j0 + f0t1i0j6 - f0t1i6j0
              = 1
 BAL0T1AT1:  - f0t1i0j1 + f0t1i1j0 + f0t1i1j6 - f0t1i6j1 + f0t1i1j4 - f0t1i4j1
             + f0t1i1j2 - f0t1i2j1 + f0t1i1j7 - f0t1i7j1 + f0t1i1j5 - f0t1i5j1
             + f0t1i1j8 - f0t1i8j1 + f0t1i1j3 - f0t1i3j1 + f0t1i1j9 - f0t1i9j1
              = -1
 BAL0T1AT2:  f0t1i2j0 - f0t1i0j2 - f0t1i1j2 + f0t1i2j1 - f0t1i7j2 + f0t1i2j7
             + f0t1i2j3 - f0t1i3j2 + f0t1i2j6 - f0t1i6j2 + f0t1i2j8 - f0t1i8j2
             + f0t1i2j5 - f0t1i5j2 + f0t1i2j4 - f0t1i4j2 + f0t1i2j9 - f0t1i9j2
              = 0
 BAL0T1AT3:  - f0t1i0j3 + f0t1i3j0 - f0t1i1j3 + f0t1i3j1 - f0t1i2j3 + f0t1i3j2
             - f0t1i9j3 + f0t1i3j9 + f0t1i3j6 - f0t1i6j3 + f0t1i3j7 - f0t1i7j3
             + f0t1i3j5 - f0t1i5j3 + f0t1i3j8 - f0t1i8j3 + f0t1i3j4 - f0t1i4j3
              = 0
 BAL0T1AT4:  - f0t1i0j4 + f0t1i4j0 - f0t1i1j4 + f0t1i4j1 - f0t1i2j4 + f0t1i4j2
             - f0t1i3j4 + f0t1i4j3 - f0t1i5j4 + f0t1i4j5 + f0t1i4j8 - f0t1i8j4
             + f0t1i4j6 - f0t1i6j4 + f0t1i4j7 - f0t1i7j4 + f0t1i4j9 - f0t1i9j4
              = 0
 BAL0T1AT5:  - f0t1i0j5 + f0t1i5j0 - f0t1i1j5 + f0t1i5j1 - f0t1i2j5 + f0t1i5j2
             - f0t1i3j5 + f0t1i5j3 + f0t1i5j4 - f0t1i4j5 - f0t1i6j5 + f0t1i5j6
             + f0t1i5j8 - f0t1i8j5 + f0t1i5j9 - f0t1i9j5 + f0t1i5j7 - f0t1i7j5
              = 0
 BAL0T1AT6:  - f0t1i0j6 + f0t1i6j0 - f0t1i1j6 + f0t1i6j1 - f0t1i2j6 + f0t1i6j2
             - f0t1i3j6 + f0t1i6j3 - f0t1i4j6 + f0t1i6j4 + f0t1i6j5 - f0t1i5j6
             + f0t1i6j9 - f0t1i9j6 + f0t1i6j8 - f0t1i8j6 + f0t1i6j7 - f0t1i7j6
              = 0
 BAL0T1AT7:  - f0t1i0j7 + f0t1i7j0 - f0t1i1j7 + f0t1i7j1 + f0t1i7j2 - f0t1i2j7
             - f0t1i3j7 + f0t1i7j3 - f0t1i4j7 + f0t1i7j4 - f0t1i5j7 + f0t1i7j5
             - f0t1i6j7 + f0t1i7j6 + f0t1i7j8 - f0t1i8j7 + f0t1i7j9 - f0t1i9j7
              = 0
 BAL0T1AT8:  - f0t1i0j8 + f0t1i8j0 - f0t1i1j8 + f0t1i8j1 - f0t1i2j8 + f0t1i8j2
             - f0t1i3j8 + f0t1i8j3 - f0t1i4j8 + f0t1i8j4 - f0t1i5j8 + f0t1i8j5
             - f0t1i6j8 + f0t1i8j6 - f0t1i7j8 + f0t1i8j7 + f0t1i8j9 - f0t1i9j8
              = 0
 BAL0T1AT9:  - f0t1i0j9 + f0t1i9j0 - f0t1i1j9 + f0t1i9j1 - f0t1i2j9 + f0t1i9j2
             + f0t1i9j3 - f0t1i3j9 - f0t1i4j9 + f0t1i9j4 - f0t1i5j9 + f0t1i9j5
             - f0t1i6j9 + f0t1i9j6 - f0t1i7j9 + f0t1i9j7 - f0t1i8j9 + f0t1i9j8
              = 0
 CAP4T3I7J2: - x7t2 + f4t3i7j2 + f4t3i2j7 <= 0
 CAP4T3I2J0: - x2t0 + f4t3i2j0 + f4t3i0j2 <= 0
 CAP4T3I0J1: - x0t1 + f4t3i0j1 + f4t3i1j0 <= 0
 CAP4T3I1J6: - x1t6 + f4t3i1j6 + f4t3i6j1 <= 0
 CAP4T3I6J5: - x6t5 + f4t3i6j5 + f4t3i5j6 <= 0
 CAP4T3I5J4: - x5t4 + f4t3i5j4 + f4t3i4j5 <= 0
 CAP4T3I4J8: - x4t8 + f4t3i4j8 + f4t3i8j4 <= 0
 CAP4T3I8J9: - x8t9 + f4t3i8j9 + f4t3i9j8 <= 0
 CAP4T3I9J3: - x9t3 + f4t3i9j3 + f4t3i3j9 <= 0
 CAP4T3I0J5: - x0t5 + f4t3i0j5 + f4t3i5j0 <= 0
 CAP4T3I0J3: - x0t3 + f4t3i0j3 + f4t3i3j0 <= 0
 CAP4T3I1J4: - x1t4 + f4t3i1j4 + f4t3i4j1 <= 0
 CAP4T3I3J6: - x3t6 + f4t3i3j6 + f4t3i6j3 <= 0
 CAP4T3I4J6: - x4t6 + f4t3i4j6 + f4t3i6j4 <= 0
 CAP4T3I3J7: - x3t7 + f4t3i3j7 + f4t3i7j3 <= 0
 CAP4T3I3J5: - x3t5 + f4t3i3j5 + f4t3i5j3 <= 0
 CAP4T3I0J7: - x0t7 + f4t3i0j7 + f4t3i7j0 <= 0
 CAP4T3I1J2: - x1t2 + f4t3i1j2 + f4t3i2j1 <= 0
 CAP4T3I5J8: - x5t8 + f4t3i5j8 + f4t3i8j5 <= 0
 CAP4T3I6J9: - x6t9 + f4t3i6j9 + f4t3i9j6 <= 0
 CAP4T3I7J8: - x7t8 + f4t3i7j8 + f4t3i8j7 <= 0
 CAP4T3I2J3: - x2t3 + f4t3i2j3 + f4t3i3j2 <= 0
 CAP4T3I0J8: - x0t8 + f4t3i0j8 + f4t3i8j0 <= 0
 CAP4T3I2J6: - x2t6 + f4t3i2j6 + f4t3i6j2 <= 0
 CAP4T3I2J8: - x2t8 + f4t3i2j8 + f4t3i8j2 <= 0
 CAP4T3I5J9: - x5t9 + f4t3i5j9 + f4t3i9j5 <= 0
 CAP4T3I1J7: - x1t7 + f4t3i1j7 + f4t3i7j1 <= 0
 CAP4T3I4J7: - x4t7 + f4t3i4j7 + f4t3i7j4 <= 0
 CAP4T3I3J8: - x3t8 + f4t3i3j8 + f4t3i8j3 <= 0
 CAP4T3I2J5: - x2t5 + f4t3i2j5 + f4t3i5j2 <= 0
 CAP4T3I7J9: - x7t9 + f4t3i7j9 + f4t3i9j7 <= 0
 CAP4T3I1J5: - x1t5 + f4t3i1j5 + f4t3i5j1 <= 0
 CAP4T3I0J9: - x0t9 + f4t3i0j9 + f4t3i9j0 <= 0
 CAP4T3I1J8: - x1t8 + f4t3i1j8 + f4t3i8j1 <= 0
 CAP4T3I0J4: - x0t4 + f4t3i0j4 + f4t3i4j0 <= 0
 CAP4T3I4J9: - x4t9 + f4t3i4j9 + f4t3i9j4 <= 0
 CAP4T3I6J8: - x6t8 + f4t3i6j8 + f4t3i8j6 <= 0
 CAP4T3I2J4: - x2t4 + f4t3i2j4 + f4t3i4j2 <= 0
 CAP4T3I2J9: - x2t9 + f4t3i2j9 + f4t3i9j2 <= 0
 CAP4T3I1J3: - x1t3 + f4t3i1j3 + f4t3i3j1 <= 0
 CAP4T3I5J7: - x5t7 + f4t3i5j7 + f4t3i7j5 <= 0
 CAP4T3I3J4: - x3t4 + f4t3i3j4 + f4t3i4j3 <= 0
 CAP4T3I1J9: - x1t9 + f4t3i1j9 + f4t3i9j1 <= 0
 CAP4T3I0J6: - x0t6 + f4t3i0j6 + f4t3i6j0 <= 0
 CAP4T3I6J7: - x6t7 + f4t3i6j7 + f4t3i7j6 <= 0
 CAP7T6I7J2: - x7t2 + f7t6i7j2 + f7t6i2j7 <= 0
 CAP7T6I2J0: - x2t0 + f7t6i2j0 + f7t6i0j2 <= 0
 CAP7T6I0J1: - x0t1 + f7t6i0j1 + f7t6i1j0 <= 0
 CAP7T6I1J6: - x1t6 + f7t6i1j6 + f7t6i6j1 <= 0
 CAP7T6I6J5: - x6t5 + f7t6i6j5 + f7t6i5j6 <= 0
 CAP7T6I5J4: - x5t4 + f7t6i5j4 + f7t6i4j5 <= 0
 CAP7T6I4J8: - x4t8 + f7t6i4j8 + f7t6i8j4 <= 0
 CAP7T6I8J9: - x8t9 + f7t6i8j9 + f7t6i9j8 <= 0
 CAP7T6I9J3: - x9t3 + f7t6i9j3 + f7t6i3j9 <= 0
 CAP7T6I0J5: - x0t5 + f7t6i0j5 + f7t6i5j0 <= 0
 CAP7T6I0J3: - x0t3 + f7t6i0j3 + f7t6i3j0 <= 0
 CAP7T6I1J4: - x1t4 + f7t6i1j4 + f7t6i4j1 <= 0
 CAP7T6I3J6: - x3t6 + f7t6i3j6 + f7t6i6j3 <= 0
 CAP7T6I4J6: - x4t6 + f7t6i4j6 + f7t6i6j4 <= 0
 CAP7T6I3J7: - x3t7 + f7t6i3j7 + f7t6i7j3 <= 0
 CAP7T6I3J5: - x3t5 + f7t6i3j5 + f7t6i5j3 <= 0
 CAP7T6I0J7: - x0t7 + f7t6i0j7 + f7t6i7j0 <= 0
 CAP7T6I1J2: - x1t2 + f7t6i1j2 + f7t6i2j1 <= 0
 CAP7T6I5J8: - x5t8 + f7t6i5j8 + f7t6i8j5 <= 0
 CAP7T6I6J9: - x6t9 + f7t6i6j9 + f7t6i9j6 <= 0
 CAP7T6I7J8: - x7t8 + f7t6i7j8 + f7t6i8j7 <= 0
 CAP7T6I2J3: - x2t3 + f7t6i2j3 + f7t6i3j2 <= 0
 CAP7T6I0J8: - x0t8 + f7t6i0j8 + f7t6i8j0 <= 0
 CAP7T6I2J6: - x2t6 + f7t6i2j6 + f7t6i6j2 <= 0
 CAP7T6I2J8: - x2t8 + f7t6i2j8 + f7t6i8j2 <= 0
 CAP7T6I5J9: - x5t9 + f7t6i5j9 + f7t6i9j5 <= 0
 CAP7T6I1J7: - x1t7 + f7t6i1j7 + f7t6i7j1 <= 0
 CAP7T6I4J7: - x4t7 + f7t6i4j7 + f7t6i7j4 <= 0
 CAP7T6I3J8: - x3t8 + f7t6i3j8 + f7t6i8j3 <= 0
 CAP7T6I2J5: - x2t5 + f7t6i2j5 + f7t6i5j2 <= 0
 CAP7T6I7J9: - x7t9 + f7t6i7j9 + f7t6i9j7 <= 0
 CAP7T6I1J5: - x1t5 + f7t6i1j5 + f7t6i5j1 <= 0
 CAP7T6I0J9: - x0t9 + f7t6i0j9 + f7t6i9j0 <= 0
 CAP7T6I1J8: - x1t8 + f7t6i1j8 + f7t6i8j1 <= 0
 CAP7T6I0J4: - x0t4 + f7t6i0j4 + f7t6i4j0 <= 0
 CAP7T6I4J9: - x4t9 + f7t6i4j9 + f7t6i9j4 <= 0
 CAP7T6I6J8: - x6t8 + f7t6i6j8 + f7t6i8j6 <= 0
 CAP7T6I2J4: - x2t4 + f7t6i2j4 + f7t6i4j2 <= 0
 CAP7T6I2J9: - x2t9 + f7t6i2j9 + f7t6i9j2 <= 0
 CAP7T6I1J3: - x1t3 + f7t6i1j3 + f7t6i3j1 <= 0
 CAP7T6I5J7: - x5t7 + f7t6i5j7 + f7t6i7j5 <= 0
 CAP7T6I3J4: - x3t4 + f7t6i3j4 + f7t6i4j3 <= 0
 CAP7T6I1J9: - x1t9 + f7t6i1j9 + f7t6i9j1 <= 0
 CAP7T6I0J6: - x0t6 + f7t6i0j6 + f7t6i6j0 <= 0
 CAP7T6I6J7: - x6t7 + f7t6i6j7 + f7t6i7j6 <= 0
 CAP5T9I7J2: - x7t2 + f5t9i7j2 + f5t9i2j7 <= 0
 CAP5T9I2J0: - x2t0 + f5t9i2j0 + f5t9i0j2 <= 0
 CAP5T9I0J1: - x0t1 + f5t9i0j1 + f5t9i1j0 <= 0
 CAP5T9I1J6: - x1t6 + f5t9i1j6 + f5t9i6j1 <= 0
 CAP5T9I6J5: - x6t5 + f5t9i6j5 + f5t9i5j6 <= 0
 CAP5T9I5J4: - x5t4 + f5t9i5j4 + f5t9i4j5 <= 0
 CAP5T9I4J8: - x4t8 + f5t9i4j8 + f5t9i8j4 <= 0
 CAP5T9I8J9: - x8t9 + f5t9i8j9 + f5t9i9j8 <= 0
 CAP5T9I9J3: - x9t3 + f5t9i9j3 + f5t9i3j9 <= 0
 CAP5T9I0J5: - x0t5 + f5t9i0j5 + f5t9i5j0 <= 0
 CAP5T9I0J3: - x0t3 + f5t9i0j3 + f5t9i3j0 <= 0
 CAP5T9I1J4: - x1t4 + f5t9i1j4 + f5t9i4j1 <= 0
 CAP5T9I3J6: - x3t6 + f5t9i3j6 + f5t9i6j3 <= 0
 CAP5T9I4J6: - x4t6 + f5t9i4j6 + f5t9i6j4 <= 0
 CAP5T9I3J7: - x3t7 + f5t9i3j7 + f5t9i7j3 <= 0
 CAP5T9I3J5: - x3t5 + f5t9i3j5 + f5t9i5j3 <= 0
 CAP5T9I0J7: - x0t7 + f5t9i0j7 + f5t9i7j0 <= 0
 CAP5T9I1J2: - x1t2 + f5t9i1j2 + f5t9i2j1 <= 0
 CAP5T9I5J8: - x5t8 + f5t9i5j8 + f5t9i8j5 <= 0
 CAP5T9I6J9: - x6t9 + f5t9i6j9 + f5t9i9j6 <= 0
 CAP5T9I7J8: - x7t8 + f5t9i7j8 + f5t9i8j7 <= 0
 CAP5T9I2J3: - x2t3 + f5t9i2j3 + f5t9i3j2 <= 0
 CAP5T9I0J8: - x0t8 + f5t9i0j8 + f5t9i8j0 <= 0
 CAP5T9I2J6: - x2t6 + f5t9i2j6 + f5t9i6j2 <= 0
 CAP5T9I2J8: - x2t8 + f5t9i2j8 + f5t9i8j2 <= 0
 CAP5T9I5J9: - x5t9 + f5t9i5j9 + f5t9i9j5 <= 0
 CAP5T9I1J7: - x1t7 + f5t9i1j7 + f5t9i7j1 <= 0
 CAP5T9I4J7: - x4t7 + f5t9i4j7 + f5t9i7j4 <= 0
 CAP5T9I3J8: - x3t8 + f5t9i3j8 + f5t9i8j3 <= 0
 CAP5T9I2J5: - x2t5 + f5t9i2j5 + f5t9i5j2 <= 0
 CAP5T9I7J9: - x7t9 + f5t9i7j9 + f5t9i9j7 <= 0
 CAP5T9I1J5: - x1t5 + f5t9i1j5 + f5t9i5j1 <= 0
 CAP5T9I0J9: - x0t9 + f5t9i0j9 + f5t9i9j0 <= 0
 CAP5T9I1J8: - x1t8 + f5t9i1j8 + f5t9i8j1 <= 0
 CAP5T9I0J4: - x0t4 + f5t9i0j4 + f5t9i4j0 <= 0
 CAP5T9I4J9: - x4t9 + f5t9i4j9 + f5t9i9j4 <= 0
 CAP5T9I6J8: - x6t8 + f5t9i6j8 + f5t9i8j6 <= 0
 CAP5T9I2J4: - x2t4 + f5t9i2j4 + f5t9i4j2 <= 0
 CAP5T9I2J9: - x2t9 + f5t9i2j9 + f5t9i9j2 <= 0
 CAP5T9I1J3: - x1t3 + f5t9i1j3 + f5t9i3j1 <= 0
 CAP5T9I5J7: - x5t7 + f5t9i5j7 + f5t9i7j5 <= 0
 CAP5T9I3J4: - x3t4 + f5t9i3j4 + f5t9i4j3 <= 0
 CAP5T9I1J9: - x1t9 + f5t9i1j9 + f5t9i9j1 <= 0
 CAP5T9I0J6: - x0t6 + f5t9i0j6 + f5t9i6j0 <= 0
 CAP5T9I6J7: - x6t7 + f5t9i6j7 + f5t9i7j6 <= 0
 CAP0T2I7J2: - x7t2 + f0t2i7j2 + f0t2i2j7 <= 0
 CAP0T2I2J0: - x2t0 + f0t2i2j0 + f0t2i0j2 <= 0
 CAP0T2I0J1: - x0t1 + f0t2i0j1 + f0t2i1j0 <= 0
 CAP0T2I1J6: - x1t6 + f0t2i1j6 + f0t2i6j1 <= 0
 CAP0T2I6J5: - x6t5 + f0t2i6j5 + f0t2i5j6 <= 0
 CAP0T2I5J4: - x5t4 + f0t2i5j4 + f0t2i4j5 <= 0
 CAP0T2I4J8: - x4t8 + f0t2i4j8 + f0t2i8j4 <= 0
 CAP0T2I8J9: - x8t9 + f0t2i8j9 + f0t2i9j8 <= 0
 CAP0T2I9J3: - x9t3 + f0t2i9j3 + f0t2i3j9 <= 0
 CAP0T2I0J5: - x0t5 + f0t2i0j5 + f0t2i5j0 <= 0
 CAP0T2I0J3: - x0t3 + f0t2i0j3 + f0t2i3j0 <= 0
 CAP0T2I1J4: - x1t4 + f0t2i1j4 + f0t2i4j1 <= 0
 CAP0T2I3J6: - x3t6 + f0t2i3j6 + f0t2i6j3 <= 0
 CAP0T2I4J6: - x4t6 + f0t2i4j6 + f0t2i6j4 <= 0
 CAP0T2I3J7: - x3t7 + f0t2i3j7 + f0t2i7j3 <= 0
 CAP0T2I3J5: - x3t5 + f0t2i3j5 + f0t2i5j3 <= 0
 CAP0T2I0J7: - x0t7 + f0t2i0j7 + f0t2i7j0 <= 0
 CAP0T2I1J2: - x1t2 + f0t2i1j2 + f0t2i2j1 <= 0
 CAP0T2I5J8: - x5t8 + f0t2i5j8 + f0t2i8j5 <= 0
 CAP0T2I6J9: - x6t9 + f0t2i6j9 + f0t2i9j6 <= 0
 CAP0T2I7J8: - x7t8 + f0t2i7j8 + f0t2i8j7 <= 0
 CAP0T2I2J3: - x2t3 + f0t2i2j3 + f0t2i3j2 <= 0
 CAP0T2I0J8: - x0t8 + f0t2i0j8 + f0t2i8j0 <= 0
 CAP0T2I2J6: - x2t6 + f0t2i2j6 + f0t2i6j2 <= 0
 CAP0T2I2J8: - x2t8 + f0t2i2j8 + f0t2i8j2 <= 0
 CAP0T2I5J9: - x5t9 + f0t2i5j9 + f0t2i9j5 <= 0
 CAP0T2I1J7: - x1t7 + f0t2i1j7 + f0t2i7j1 <= 0
 CAP0T2I4J7: - x4t7 + f0t2i4j7 + f0t2i7j4 <= 0
 CAP0T2I3J8: - x3t8 + f0t2i3j8 + f0t2i8j3 <= 0
 CAP0T2I2J5: - x2t5 + f0t2i2j5 + f0t2i5j2 <= 0
 CAP0T2I7J9: - x7t9 + f0t2i7j9 + f0t2i9j7 <= 0
 CAP0T2I1J5: - x1t5 + f0t2i1j5 + f0t2i5j1 <= 0
 CAP0T2I0J9: - x0t9 + f0t2i0j9 + f0t2i9j0 <= 0
 CAP0T2I1J8: - x1t8 + f0t2i1j8 + f0t2i8j1 <= 0
 CAP0T2I0J4: - x0t4 + f0t2i0j4 + f0t2i4j0 <= 0
 CAP0T2I4J9: - x4t9 + f0t2i4j9 + f0t2i9j4 <= 0
 CAP0T2I6J8: - x6t8 + f0t2i6j8 + f0t2i8j6 <= 0
 CAP0T2I2J4: - x2t4 + f0t2i2j4 + f0t2i4j2 <= 0
 CAP0T2I2J9: - x2t9 + f0t2i2j9 + f0t2i9j2 <= 0
 CAP0T2I1J3: - x1t3 + f0t2i1j3 + f0t2i3j1 <= 0
 CAP0T2I5J7: - x5t7 + f0t2i5j7 + f0t2i7j5 <= 0
 CAP0T2I3J4: - x3t4 + f0t2i3j4 + f0t2i4j3 <= 0
 CAP0T2I1J9: - x1t9 + f0t2i1j9 + f0t2i9j1 <= 0
 CAP0T2I0J6: - x0t6 + f0t2i0j6 + f0t2i6j0 <= 0
 CAP0T2I6J7: - x6t7 + f0t2i6j7 + f0t2i7j6 <= 0
 CAP0T8I7J2: - x7t2 + f0t8i7j2 + f0t8i2j7 <= 0
 CAP0T8I2J0: - x2t0 + f0t8i2j0 + f0t8i0j2 <= 0
 CAP0T8I0J1: - x0t1 + f0t8i0j1 + f0t8i1j0 <= 0
 CAP0T8I1J6: - x1t6 + f0t8i1j6 + f0t8i6j1 <= 0
 CAP0T8I6J5: - x6t5 + f0t8i6j5 + f0t8i5j6 <= 0
 CAP0T8I5J4: - x5t4 + f0t8i5j4 + f0t8i4j5 <= 0
 CAP0T8I4J8: - x4t8 + f0t8i4j8 + f0t8i8j4 <= 0
 CAP0T8I8J9: - x8t9 + f0t8i8j9 + f0t8i9j8 <= 0
 CAP0T8I9J3: - x9t3 + f0t8i9j3 + f0t8i3j9 <= 0
 CAP0T8I0J5: - x0t5 + f0t8i0j5 + f0t8i5j0 <= 0
 CAP0T8I0J3: - x0t3 + f0t8i0j3 + f0t8i3j0 <= 0
 CAP0T8I1J4: - x1t4 + f0t8i1j4 + f0t8i4j1 <= 0
 CAP0T8I3J6: - x3t6 + f0t8i3j6 + f0t8i6j3 <= 0
 CAP0T8I4J6: - x4t6 + f0t8i4j6 + f0t8i6j4 <= 0
 CAP0T8I3J7: - x3t7 + f0t8i3j7 + f0t8i7j3 <= 0
 CAP0T8I3J5: - x3t5 + f0t8i3j5 + f0t8i5j3 <= 0
 CAP0T8I0J7: - x0t7 + f0t8i0j7 + f0t8i7j0 <= 0
 CAP0T8I1J2: - x1t2 + f0t8i1j2 + f0t8i2j1 <= 0
 CAP0T8I5J8: - x5t8 + f0t8i5j8 + f0t8i8j5 <= 0
 CAP0T8I6J9: - x6t9 + f0t8i6j9 + f0t8i9j6 <= 0
 CAP0T8I7J8: - x7t8 + f0t8i7j8 + f0t8i8j7 <= 0
 CAP0T8I2J3: - x2t3 + f0t8i2j3 + f0t8i3j2 <= 0
 CAP0T8I0J8: - x0t8 + f0t8i0j8 + f0t8i8j0 <= 0
 CAP0T8I2J6: - x2t6 + f0t8i2j6 + f0t8i6j2 <= 0
 CAP0T8I2J8: - x2t8 + f0t8i2j8 + f0t8i8j2 <= 0
 CAP0T8I5J9: - x5t9 + f0t8i5j9 + f0t8i9j5 <= 0
 CAP0T8I1J7: - x1t7 + f0t8i1j7 + f0t8i7j1 <= 0
 CAP0T8I4J7: - x4t7 + f0t8i4j7 + f0t8i7j4 <= 0
 CAP0T8I3J8: - x3t8 + f0t8i3j8 + f0t8i8j3 <= 0
 CAP0T8I2J5: - x2t5 + f0t8i2j5 + f0t8i5j2 <= 0
 CAP0T8I7J9: - x7t9 + f0t8i7j9 + f0t8i9j7 <= 0
 CAP0T8I1J5: - x1t5 + f0t8i1j5 + f0t8i5j1 <= 0
 CAP0T8I0J9: - x0t9 + f0t8i0j9 + f0t8i9j0 <= 0
 CAP0T8I1J8: - x1t8 + f0t8i1j8 + f0t8i8j1 <= 0
 CAP0T8I0J4: - x0t4 + f0t8i0j4 + f0t8i4j0 <= 0
 CAP0T8I4J9: - x4t9 + f0t8i4j9 + f0t8i9j4 <= 0
 CAP0T8I6J8: - x6t8 + f0t8i6j8 + f0t8i8j6 <= 0
 CAP0T8I2J4: - x2t4 + f0t8i2j4 + f0t8i4j2 <= 0
 CAP0T8I2J9: - x2t9 + f0t8i2j9 + f0t8i9j2 <= 0
 CAP0T8I1J3: - x1t3 + f0t8i1j3 + f0t8i3j1 <= 0
 CAP0T8I5J7: - x5t7 + f0t8i5j7 + f0t8i7j5 <= 0
 CAP0T8I3J4: - x3t4 + f0t8i3j4 + f0t8i4j3 <= 0
 CAP0T8I1J9: - x1t9 + f0t8i1j9 + f0t8i9j1 <= 0
 CAP0T8I0J6: - x0t6 + f0t8i0j6 + f0t8i6j0 <= 0
 CAP0T8I6J7: - x6t7 + f0t8i6j7 + f0t8i7j6 <= 0
 CAP0T1I7J2: - x7t2 + f0t1i7j2 + f0t1i2j7 <= 0
 CAP0T1I2J0: - x2t0 + f0t1i2j0 + f0t1i0j2 <= 0
 CAP0T1I0J1: - x0t1 + f0t1i0j1 + f0t1i1j0 <= 0
 CAP0T1I1J6: - x1t6 + f0t1i1j6 + f0t1i6j1 <= 0
 CAP0T1I6J5: - x6t5 + f0t1i6j5 + f0t1i5j6 <= 0
 CAP0T1I5J4: - x5t4 + f0t1i5j4 + f0t1i4j5 <= 0
 CAP0T1I4J8: - x4t8 + f0t1i4j8 + f0t1i8j4 <= 0
 CAP0T1I8J9: - x8t9 + f0t1i8j9 + f0t1i9j8 <= 0
 CAP0T1I9J3: - x9t3 + f0t1i9j3 + f0t1i3j9 <= 0
 CAP0T1I0J5: - x0t5 + f0t1i0j5 + f0t1i5j0 <= 0
 CAP0T1I0J3: - x0t3 + f0t1i0j3 + f0t1i3j0 <= 0
 CAP0T1I1J4: - x1t4 + f0t1i1j4 + f0t1i4j1 <= 0
 CAP0T1I3J6: - x3t6 + f0t1i3j6 + f0t1i6j3 <= 0
 CAP0T1I4J6: - x4t6 + f0t1i4j6 + f0t1i6j4 <= 0
 CAP0T1I3J7: - x3t7 + f0t1i3j7 + f0t1i7j3 <= 0
 CAP0T1I3J5: - x3t5 + f0t1i3j5 + f0t1i5j3 <= 0
 CAP0T1I0J7: - x0t7 + f0t1i0j7 + f0t1i7j0 <= 0
 CAP0T1I1J2: - x1t2 + f0t1i1j2 + f0t1i2j1 <= 0
 CAP0T1I5J8: - x5t8 + f0t1i5j8 + f0t1i8j5 <= 0
 CAP0T1I6J9: - x6t9 + f0t1i6j9 + f0t1i9j6 <= 0
 CAP0T1I7J8: - x7t8 + f0t1i7j8 + f0t1i8j7 <= 0
 CAP0T1I2J3: - x2t3 + f0t1i2j3 + f0t1i3j2 <= 0
 CAP0T1I0J8: - x0t8 + f0t1i0j8 + f0t1i8j0 <= 0
 CAP0T1I2J6: - x2t6 + f0t1i2j6 + f0t1i6j2 <= 0
 CAP0T1I2J8: - x2t8 + f0t1i2j8 + f0t1i8j2 <= 0
 CAP0T1I5J9: - x5t9 + f0t1i5j9 + f0t1i9j5 <= 0
 CAP0T1I1J7: - x1t7 + f0t1i1j7 + f0t1i7j1 <= 0
 CAP0T1I4J7: - x4t7 + f0t1i4j7 + f0t1i7j4 <= 0
 CAP0T1I3J8: - x3t8 + f0t1i3j8 + f0t1i8j3 <= 0
 CAP0T1I2J5: - x2t5 + f0t1i2j5 + f0t1i5j2 <= 0
 CAP0T1I7J9: - x7t9 + f0t1i7j9 + f0t1i9j7 <= 0
 CAP0T1I1J5: - x1t5 + f0t1i1j5 + f0t1i5j1 <= 0
 CAP0T1I0J9: - x0t9 + f0t1i0j9 + f0t1i9j0 <= 0
 CAP0T1I1J8: - x1t8 + f0t1i1j8 + f0t1i8j1 <= 0
 CAP0T1I0J4: - x0t4 + f0t1i0j4 + f0t1i4j0 <= 0
 CAP0T1I4J9: - x4t9 + f0t1i4j9 + f0t1i9j4 <= 0
 CAP0T1I6J8: - x6t8 + f0t1i6j8 + f0t1i8j6 <= 0
 CAP0T1I2J4: - x2t4 + f0t1i2j4 + f0t1i4j2 <= 0
 CAP0T1I2J9: - x2t9 + f0t1i2j9 + f0t1i9j2 <= 0
 CAP0T1I1J3: - x1t3 + f0t1i1j3 + f0t1i3j1 <= 0
 CAP0T1I5J7: - x5t7 + f0t1i5j7 + f0t1i7j5 <= 0
 CAP0T1I3J4: - x3t4 + f0t1i3j4 + f0t1i4j3 <= 0
 CAP0T1I1J9: - x1t9 + f0t1i1j9 + f0t1i9j1 <= 0
 CAP0T1I0J6: - x0t6 + f0t1i0j6 + f0t1i6j0 <= 0
 CAP0T1I6J7: - x6t7 + f0t1i6j7 + f0t1i7j6 <= 0
Bounds
 0 <= x7t2 <= 1
 0 <= x2t0 <= 1
 0 <= x0t1 <= 1
 0 <= x1t6 <= 1
 0 <= x6t5 <= 1
 0 <= x5t4 <= 1
 0 <= x4t8 <= 1
 0 <= x8t9 <= 1
 0 <= x9t3 <= 1
 0 <= x0t5 <= 1
 0 <= x0t3 <= 1
 0 <= x1t4 <= 1
 0 <= x3t6 <= 1
 0 <= x4t6 <= 1
 0 <= x3t7 <= 1
 0 <= x3t5 <= 1
 0 <= x0t7 <= 1
 0 <= x1t2 <= 1
 0 <= x5t8 <= 1
 0 <= x6t9 <= 1
 0 <= x7t8 <= 1
 0 <= x2t3 <= 1
 0 <= x0t8 <= 1
 0 <= x2t6 <= 1
 0 <= x2t8 <= 1
 0 <= x5t9 <= 1
 0 <= x1t7 <= 1
 0 <= x4t7 <= 1
 0 <= x3t8 <= 1
 0 <= x2t5 <= 1
 0 <= x7t9 <= 1
 0 <= x1t5 <= 1
 0 <= x0t9 <= 1
 0 <= x1t8 <= 1
 0 <= x0t4 <= 1
 0 <= x4t9 <= 1
 0 <= x6t8 <= 1
 0 <= x2t4 <= 1
 0 <= x2t9 <= 1
 0 <= x1t3 <= 1
 0 <= x5t7 <= 1
 0 <= x3t4 <= 1
 0 <= x1t9 <= 1
 0 <= x0t6 <= 1
 0 <= x6t7 <= 1
      x46 = 0
 0 <= f4t3i2j0 <= 1
 0 <= f4t3i0j2 <= 1
 0 <= f4t3i0j1 <= 1
 0 <= f4t3i1j0 <= 1
 0 <= f4t3i0j5 <= 1
 0 <= f4t3i5j0 <= 1
 0 <= f4t3i0j3 <= 1
 0 <= f4t3i3j0 <= 1
 0 <= f4t3i0j7 <= 1
 0 <= f4t3i7j0 <= 1
 0 <= f4t3i0j8 <= 1
 0 <= f4t3i8j0 <= 1
 0 <= f4t3i0j9 <= 1
 0 <= f4t3i9j0 <= 1
 0 <= f4t3i0j4 <= 1
 0 <= f4t3i4j0 <= 1
 0 <= f4t3i0j6 <= 1
 0 <= f4t3i6j0 <= 1
 0 <= f4t3i1j6 <= 1
 0 <= f4t3i6j1 <= 1
 0 <= f4t3i1j4 <= 1
 0 <= f4t3i4j1 <= 1
 0 <= f4t3i1j2 <= 1
 0 <= f4t3i2j1 <= 1
 0 <= f4t3i1j7 <= 1
 0 <= f4t3i7j1 <= 1
 0 <= f4t3i1j5 <= 1
 0 <= f4t3i5j1 <= 1
 0 <= f4t3i1j8 <= 1
 0 <= f4t3i8j1 <= 1
 0 <= f4t3i1j3 <= 1
 0 <= f4t3i3j1 <= 1
 0 <= f4t3i1j9 <= 1
 0 <= f4t3i9j1 <= 1
 0 <= f4t3i7j2 <= 1
 0 <= f4t3i2j7 <= 1
 0 <= f4t3i2j3 <= 1
 0 <= f4t3i3j2 <= 1
 0 <= f4t3i2j6 <= 1
 0 <= f4t3i6j2 <= 1
 0 <= f4t3i2j8 <= 1
 0 <= f4t3i8j2 <= 1
 0 <= f4t3i2j5 <= 1
 0 <= f4t3i5j2 <= 1
 0 <= f4t3i2j4 <= 1
 0 <= f4t3i4j2 <= 1
 0 <= f4t3i2j9 <= 1
 0 <= f4t3i9j2 <= 1
 0 <= f4t3i9j3 <= 1
 0 <= f4t3i3j9 <= 1
 0 <= f4t3i3j6 <= 1
 0 <= f4t3i6j3 <= 1
 0 <= f4t3i3j7 <= 1
 0 <= f4t3i7j3 <= 1
 0 <= f4t3i3j5 <= 1
 0 <= f4t3i5j3 <= 1
 0 <= f4t3i3j8 <= 1
 0 <= f4t3i8j3 <= 1
 0 <= f4t3i3j4 <= 1
 0 <= f4t3i4j3 <= 1
 0 <= f4t3i5j4 <= 1
 0 <= f4t3i4j5 <= 1
 0 <= f4t3i4j8 <= 1
 0 <= f4t3i8j4 <= 1
 0 <= f4t3i4j6 <= 1
 0 <= f4t3i6j4 <= 1
 0 <= f4t3i4j7 <= 1
 0 <= f4t3i7j4 <= 1
 0 <= f4t3i4j9 <= 1
 0 <= f4t3i9j4 <= 1
 0 <= f4t3i6j5 <= 1
 0 <= f4t3i5j6 <= 1
 0 <= f4t3i5j8 <= 1
 0 <= f4t3i8j5 <= 1
 0 <= f4t3i5j9 <= 1
 0 <= f4t3i9j5 <= 1
 0 <= f4t3i5j7 <= 1
 0 <= f4t3i7j5 <= 1
 0 <= f4t3i6j9 <= 1
 0 <= f4t3i9j6 <= 1
 0 <= f4t3i6j8 <= 1
 0 <= f4t3i8j6 <= 1
 0 <= f4t3i6j7 <= 1
 0 <= f4t3i7j6 <= 1
 0 <= f4t3i7j8 <= 1
 0 <= f4t3i8j7 <= 1
 0 <= f4t3i7j9 <= 1
 0 <= f4t3i9j7 <= 1
 0 <= f4t3i8j9 <= 1
 0 <= f4t3i9j8 <= 1
 0 <= f7t6i2j0 <= 1
 0 <= f7t6i0j2 <= 1
 0 <= f7t6i0j1 <= 1
 0 <= f7t6i1j0 <= 1
 0 <= f7t6i0j5 <= 1
 0 <= f7t6i5j0 <= 1
 0 <= f7t6i0j3 <= 1
 0 <= f7t6i3j0 <= 1
 0 <= f7t6i0j7 <= 1
 0 <= f7t6i7j0 <= 1
 0 <= f7t6i0j8 <= 1
 0 <= f7t6i8j0 <= 1
 0 <= f7t6i0j9 <= 1
 0 <= f7t6i9j0 <= 1
 0 <= f7t6i0j4 <= 1
 0 <= f7t6i4j0 <= 1
 0 <= f7t6i0j6 <= 1
 0 <= f7t6i6j0 <= 1
 0 <= f7t6i1j6 <= 1
 0 <= f7t6i6j1 <= 1
 0 <= f7t6i1j4 <= 1
 0 <= f7t6i4j1 <= 1
 0 <= f7t6i1j2 <= 1
 0 <= f7t6i2j1 <= 1
 0 <= f7t6i1j7 <= 1
 0 <= f7t6i7j1 <= 1
 0 <= f7t6i1j5 <= 1
 0 <= f7t6i5j1 <= 1
 0 <= f7t6i1j8 <= 1
 0 <= f7t6i8j1 <= 1
 0 <= f7t6i1j3 <= 1
 0 <= f7t6i3j1 <= 1
 0 <= f7t6i1j9 <= 1
 0 <= f7t6i9j1 <= 1
 0 <= f7t6i7j2 <= 1
 0 <= f7t6i2j7 <= 1
 0 <= f7t6i2j3 <= 1
 0 <= f7t6i3j2 <= 1
 0 <= f7t6i2j6 <= 1
 0 <= f7t6i6j2 <= 1
 0 <= f7t6i2j8 <= 1
 0 <= f7t6i8j2 <= 1
 0 <= f7t6i2j5 <= 1
 0 <= f7t6i5j2 <= 1
 0 <= f7t6i2j4 <= 1
 0 <= f7t6i4j2 <= 1
 0 <= f7t6i2j9 <= 1
 0 <= f7t6i9j2 <= 1
 0 <= f7t6i9j3 <= 1
 0 <= f7t6i3j9 <= 1
 0 <= f7t6i3j6 <= 1
 0 <= f7t6i6j3 <= 1
 0 <= f7t6i3j7 <= 1
 0 <= f7t6i7j3 <= 1
 0 <= f7t6i3j5 <= 1
 0 <= f7t6i5j3 <= 1
 0 <= f7t6i3j8 <= 1
 0 <= f7t6i8j3 <= 1
 0 <= f7t6i3j4 <= 1
 0 <= f7t6i4j3 <= 1
 0 <= f7t6i5j4 <= 1
 0 <= f7t6i4j5 <= 1
 0 <= f7t6i4j8 <= 1
 0 <= f7t6i8j4 <= 1
 0 <= f7t6i4j6 <= 1
 0 <= f7t6i6j4 <= 1
 0 <= f7t6i4j7 <= 1
 0 <= f7t6i7j4 <= 1
 0 <= f7t6i4j9 <= 1
 0 <= f7t6i9j4 <= 1
 0 <= f7t6i6j5 <= 1
 0 <= f7t6i5j6 <= 1
 0 <= f7t6i5j8 <= 1
 0 <= f7t6i8j5 <= 1
 0 <= f7t6i5j9 <= 1
 0 <= f7t6i9j5 <= 1
 0 <= f7t6i5j7 <= 1
 0 <= f7t6i7j5 <= 1
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
 0 <= f5t9i2j0 <= 1
 0 <= f5t9i0j2 <= 1
 0 <= f5t9i0j1 <= 1
 0 <= f5t9i1j0 <= 1
 0 <= f5t9i0j5 <= 1
 0 <= f5t9i5j0 <= 1
 0 <= f5t9i0j3 <= 1
 0 <= f5t9i3j0 <= 1
 0 <= f5t9i0j7 <= 1
 0 <= f5t9i7j0 <= 1
 0 <= f5t9i0j8 <= 1
 0 <= f5t9i8j0 <= 1
 0 <= f5t9i0j9 <= 1
 0 <= f5t9i9j0 <= 1
 0 <= f5t9i0j4 <= 1
 0 <= f5t9i4j0 <= 1
 0 <= f5t9i0j6 <= 1
 0 <= f5t9i6j0 <= 1
 0 <= f5t9i1j6 <= 1
 0 <= f5t9i6j1 <= 1
 0 <= f5t9i1j4 <= 1
 0 <= f5t9i4j1 <= 1
 0 <= f5t9i1j2 <= 1
 0 <= f5t9i2j1 <= 1
 0 <= f5t9i1j7 <= 1
 0 <= f5t9i7j1 <= 1
 0 <= f5t9i1j5 <= 1
 0 <= f5t9i5j1 <= 1
 0 <= f5t9i1j8 <= 1
 0 <= f5t9i8j1 <= 1
 0 <= f5t9i1j3 <= 1
 0 <= f5t9i3j1 <= 1
 0 <= f5t9i1j9 <= 1
 0 <= f5t9i9j1 <= 1
 0 <= f5t9i7j2 <= 1
 0 <= f5t9i2j7 <= 1
 0 <= f5t9i2j3 <= 1
 0 <= f5t9i3j2 <= 1
 0 <= f5t9i2j6 <= 1
 0 <= f5t9i6j2 <= 1
 0 <= f5t9i2j8 <= 1
 0 <= f5t9i8j2 <= 1
 0 <= f5t9i2j5 <= 1
 0 <= f5t9i5j2 <= 1
 0 <= f5t9i2j4 <= 1
 0 <= f5t9i4j2 <= 1
 0 <= f5t9i2j9 <= 1
 0 <= f5t9i9j2 <= 1
 0 <= f5t9i9j3 <= 1
 0 <= f5t9i3j9 <= 1
 0 <= f5t9i3j6 <= 1
 0 <= f5t9i6j3 <= 1
 0 <= f5t9i3j7 <= 1
 0 <= f5t9i7j3 <= 1
 0 <= f5t9i3j5 <= 1
 0 <= f5t9i5j3 <= 1
 0 <= f5t9i3j8 <= 1
 0 <= f5t9i8j3 <= 1
 0 <= f5t9i3j4 <= 1
 0 <= f5t9i4j3 <= 1
 0 <= f5t9i5j4 <= 1
 0 <= f5t9i4j5 <= 1
 0 <= f5t9i4j8 <= 1
 0 <= f5t9i8j4 <= 1
 0 <= f5t9i4j6 <= 1
 0 <= f5t9i6j4 <= 1
 0 <= f5t9i4j7 <= 1
 0 <= f5t9i7j4 <= 1
 0 <= f5t9i4j9 <= 1
 0 <= f5t9i9j4 <= 1
 0 <= f5t9i6j5 <= 1
 0 <= f5t9i5j6 <= 1
 0 <= f5t9i5j8 <= 1
 0 <= f5t9i8j5 <= 1
 0 <= f5t9i5j9 <= 1
 0 <= f5t9i9j5 <= 1
 0 <= f5t9i5j7 <= 1
 0 <= f5t9i7j5 <= 1
 0 <= f5t9i6j9 <= 1
 0 <= f5t9i9j6 <= 1
 0 <= f5t9i6j8 <= 1
 0 <= f5t9i8j6 <= 1
 0 <= f5t9i6j7 <= 1
 0 <= f5t9i7j6 <= 1
 0 <= f5t9i7j8 <= 1
 0 <= f5t9i8j7 <= 1
 0 <= f5t9i7j9 <= 1
 0 <= f5t9i9j7 <= 1
 0 <= f5t9i8j9 <= 1
 0 <= f5t9i9j8 <= 1
 0 <= f0t2i2j0 <= 1
 0 <= f0t2i0j2 <= 1
 0 <= f0t2i0j1 <= 1
 0 <= f0t2i1j0 <= 1
 0 <= f0t2i0j5 <= 1
 0 <= f0t2i5j0 <= 1
 0 <= f0t2i0j3 <= 1
 0 <= f0t2i3j0 <= 1
 0 <= f0t2i0j7 <= 1
 0 <= f0t2i7j0 <= 1
 0 <= f0t2i0j8 <= 1
 0 <= f0t2i8j0 <= 1
 0 <= f0t2i0j9 <= 1
 0 <= f0t2i9j0 <= 1
 0 <= f0t2i0j4 <= 1
 0 <= f0t2i4j0 <= 1
 0 <= f0t2i0j6 <= 1
 0 <= f0t2i6j0 <= 1
 0 <= f0t2i1j6 <= 1
 0 <= f0t2i6j1 <= 1
 0 <= f0t2i1j4 <= 1
 0 <= f0t2i4j1 <= 1
 0 <= f0t2i1j2 <= 1
 0 <= f0t2i2j1 <= 1
 0 <= f0t2i1j7 <= 1
 0 <= f0t2i7j1 <= 1
 0 <= f0t2i1j5 <= 1
 0 <= f0t2i5j1 <= 1
 0 <= f0t2i1j8 <= 1
 0 <= f0t2i8j1 <= 1
 0 <= f0t2i1j3 <= 1
 0 <= f0t2i3j1 <= 1
 0 <= f0t2i1j9 <= 1
 0 <= f0t2i9j1 <= 1
 0 <= f0t2i7j2 <= 1
 0 <= f0t2i2j7 <= 1
 0 <= f0t2i2j3 <= 1
 0 <= f0t2i3j2 <= 1
 0 <= f0t2i2j6 <= 1
 0 <= f0t2i6j2 <= 1
 0 <= f0t2i2j8 <= 1
 0 <= f0t2i8j2 <= 1
 0 <= f0t2i2j5 <= 1
 0 <= f0t2i5j2 <= 1
 0 <= f0t2i2j4 <= 1
 0 <= f0t2i4j2 <= 1
 0 <= f0t2i2j9 <= 1
 0 <= f0t2i9j2 <= 1
 0 <= f0t2i9j3 <= 1
 0 <= f0t2i3j9 <= 1
 0 <= f0t2i3j6 <= 1
 0 <= f0t2i6j3 <= 1
 0 <= f0t2i3j7 <= 1
 0 <= f0t2i7j3 <= 1
 0 <= f0t2i3j5 <= 1
 0 <= f0t2i5j3 <= 1
 0 <= f0t2i3j8 <= 1
 0 <= f0t2i8j3 <= 1
 0 <= f0t2i3j4 <= 1
 0 <= f0t2i4j3 <= 1
 0 <= f0t2i5j4 <= 1
 0 <= f0t2i4j5 <= 1
 0 <= f0t2i4j8 <= 1
 0 <= f0t2i8j4 <= 1
 0 <= f0t2i4j6 <= 1
 0 <= f0t2i6j4 <= 1
 0 <= f0t2i4j7 <= 1
 0 <= f0t2i7j4 <= 1
 0 <= f0t2i4j9 <= 1
 0 <= f0t2i9j4 <= 1
 0 <= f0t2i6j5 <= 1
 0 <= f0t2i5j6 <= 1
 0 <= f0t2i5j8 <= 1
 0 <= f0t2i8j5 <= 1
 0 <= f0t2i5j9 <= 1
 0 <= f0t2i9j5 <= 1
 0 <= f0t2i5j7 <= 1
 0 <= f0t2i7j5 <= 1
 0 <= f0t2i6j9 <= 1
 0 <= f0t2i9j6 <= 1
 0 <= f0t2i6j8 <= 1
 0 <= f0t2i8j6 <= 1
 0 <= f0t2i6j7 <= 1
 0 <= f0t2i7j6 <= 1
 0 <= f0t2i7j8 <= 1
 0 <= f0t2i8j7 <= 1
 0 <= f0t2i7j9 <= 1
 0 <= f0t2i9j7 <= 1
 0 <= f0t2i8j9 <= 1
 0 <= f0t2i9j8 <= 1
 0 <= f0t8i2j0 <= 1
 0 <= f0t8i0j2 <= 1
 0 <= f0t8i0j1 <= 1
 0 <= f0t8i1j0 <= 1
 0 <= f0t8i0j5 <= 1
 0 <= f0t8i5j0 <= 1
 0 <= f0t8i0j3 <= 1
 0 <= f0t8i3j0 <= 1
 0 <= f0t8i0j7 <= 1
 0 <= f0t8i7j0 <= 1
 0 <= f0t8i0j8 <= 1
 0 <= f0t8i8j0 <= 1
 0 <= f0t8i0j9 <= 1
 0 <= f0t8i9j0 <= 1
 0 <= f0t8i0j4 <= 1
 0 <= f0t8i4j0 <= 1
 0 <= f0t8i0j6 <= 1
 0 <= f0t8i6j0 <= 1
 0 <= f0t8i1j6 <= 1
 0 <= f0t8i6j1 <= 1
 0 <= f0t8i1j4 <= 1
 0 <= f0t8i4j1 <= 1
 0 <= f0t8i1j2 <= 1
 0 <= f0t8i2j1 <= 1
 0 <= f0t8i1j7 <= 1
 0 <= f0t8i7j1 <= 1
 0 <= f0t8i1j5 <= 1
 0 <= f0t8i5j1 <= 1
 0 <= f0t8i1j8 <= 1
 0 <= f0t8i8j1 <= 1
 0 <= f0t8i1j3 <= 1
 0 <= f0t8i3j1 <= 1
 0 <= f0t8i1j9 <= 1
 0 <= f0t8i9j1 <= 1
 0 <= f0t8i7j2 <= 1
 0 <= f0t8i2j7 <= 1
 0 <= f0t8i2j3 <= 1
 0 <= f0t8i3j2 <= 1
 0 <= f0t8i2j6 <= 1
 0 <= f0t8i6j2 <= 1
 0 <= f0t8i2j8 <= 1
 0 <= f0t8i8j2 <= 1
 0 <= f0t8i2j5 <= 1
 0 <= f0t8i5j2 <= 1
 0 <= f0t8i2j4 <= 1
 0 <= f0t8i4j2 <= 1
 0 <= f0t8i2j9 <= 1
 0 <= f0t8i9j2 <= 1
 0 <= f0t8i9j3 <= 1
 0 <= f0t8i3j9 <= 1
 0 <= f0t8i3j6 <= 1
 0 <= f0t8i6j3 <= 1
 0 <= f0t8i3j7 <= 1
 0 <= f0t8i7j3 <= 1
 0 <= f0t8i3j5 <= 1
 0 <= f0t8i5j3 <= 1
 0 <= f0t8i3j8 <= 1
 0 <= f0t8i8j3 <= 1
 0 <= f0t8i3j4 <= 1
 0 <= f0t8i4j3 <= 1
 0 <= f0t8i5j4 <= 1
 0 <= f0t8i4j5 <= 1
 0 <= f0t8i4j8 <= 1
 0 <= f0t8i8j4 <= 1
 0 <= f0t8i4j6 <= 1
 0 <= f0t8i6j4 <= 1
 0 <= f0t8i4j7 <= 1
 0 <= f0t8i7j4 <= 1
 0 <= f0t8i4j9 <= 1
 0 <= f0t8i9j4 <= 1
 0 <= f0t8i6j5 <= 1
 0 <= f0t8i5j6 <= 1
 0 <= f0t8i5j8 <= 1
 0 <= f0t8i8j5 <= 1
 0 <= f0t8i5j9 <= 1
 0 <= f0t8i9j5 <= 1
 0 <= f0t8i5j7 <= 1
 0 <= f0t8i7j5 <= 1
 0 <= f0t8i6j9 <= 1
 0 <= f0t8i9j6 <= 1
 0 <= f0t8i6j8 <= 1
 0 <= f0t8i8j6 <= 1
 0 <= f0t8i6j7 <= 1
 0 <= f0t8i7j6 <= 1
 0 <= f0t8i7j8 <= 1
 0 <= f0t8i8j7 <= 1
 0 <= f0t8i7j9 <= 1
 0 <= f0t8i9j7 <= 1
 0 <= f0t8i8j9 <= 1
 0 <= f0t8i9j8 <= 1
 0 <= f0t1i2j0 <= 1
 0 <= f0t1i0j2 <= 1
 0 <= f0t1i0j1 <= 1
 0 <= f0t1i1j0 <= 1
 0 <= f0t1i0j5 <= 1
 0 <= f0t1i5j0 <= 1
 0 <= f0t1i0j3 <= 1
 0 <= f0t1i3j0 <= 1
 0 <= f0t1i0j7 <= 1
 0 <= f0t1i7j0 <= 1
 0 <= f0t1i0j8 <= 1
 0 <= f0t1i8j0 <= 1
 0 <= f0t1i0j9 <= 1
 0 <= f0t1i9j0 <= 1
 0 <= f0t1i0j4 <= 1
 0 <= f0t1i4j0 <= 1
 0 <= f0t1i0j6 <= 1
 0 <= f0t1i6j0 <= 1
 0 <= f0t1i1j6 <= 1
 0 <= f0t1i6j1 <= 1
 0 <= f0t1i1j4 <= 1
 0 <= f0t1i4j1 <= 1
 0 <= f0t1i1j2 <= 1
 0 <= f0t1i2j1 <= 1
 0 <= f0t1i1j7 <= 1
 0 <= f0t1i7j1 <= 1
 0 <= f0t1i1j5 <= 1
 0 <= f0t1i5j1 <= 1
 0 <= f0t1i1j8 <= 1
 0 <= f0t1i8j1 <= 1
 0 <= f0t1i1j3 <= 1
 0 <= f0t1i3j1 <= 1
 0 <= f0t1i1j9 <= 1
 0 <= f0t1i9j1 <= 1
 0 <= f0t1i7j2 <= 1
 0 <= f0t1i2j7 <= 1
 0 <= f0t1i2j3 <= 1
 0 <= f0t1i3j2 <= 1
 0 <= f0t1i2j6 <= 1
 0 <= f0t1i6j2 <= 1
 0 <= f0t1i2j8 <= 1
 0 <= f0t1i8j2 <= 1
 0 <= f0t1i2j5 <= 1
 0 <= f0t1i5j2 <= 1
 0 <= f0t1i2j4 <= 1
 0 <= f0t1i4j2 <= 1
 0 <= f0t1i2j9 <= 1
 0 <= f0t1i9j2 <= 1
 0 <= f0t1i9j3 <= 1
 0 <= f0t1i3j9 <= 1
 0 <= f0t1i3j6 <= 1
 0 <= f0t1i6j3 <= 1
 0 <= f0t1i3j7 <= 1
 0 <= f0t1i7j3 <= 1
 0 <= f0t1i3j5 <= 1
 0 <= f0t1i5j3 <= 1
 0 <= f0t1i3j8 <= 1
 0 <= f0t1i8j3 <= 1
 0 <= f0t1i3j4 <= 1
 0 <= f0t1i4j3 <= 1
 0 <= f0t1i5j4 <= 1
 0 <= f0t1i4j5 <= 1
 0 <= f0t1i4j8 <= 1
 0 <= f0t1i8j4 <= 1
 0 <= f0t1i4j6 <= 1
 0 <= f0t1i6j4 <= 1
 0 <= f0t1i4j7 <= 1
 0 <= f0t1i7j4 <= 1
 0 <= f0t1i4j9 <= 1
 0 <= f0t1i9j4 <= 1
 0 <= f0t1i6j5 <= 1
 0 <= f0t1i5j6 <= 1
 0 <= f0t1i5j8 <= 1
 0 <= f0t1i8j5 <= 1
 0 <= f0t1i5j9 <= 1
 0 <= f0t1i9j5 <= 1
 0 <= f0t1i5j7 <= 1
 0 <= f0t1i7j5 <= 1
 0 <= f0t1i6j9 <= 1
 0 <= f0t1i9j6 <= 1
 0 <= f0t1i6j8 <= 1
 0 <= f0t1i8j6 <= 1
 0 <= f0t1i6j7 <= 1
 0 <= f0t1i7j6 <= 1
 0 <= f0t1i7j8 <= 1
 0 <= f0t1i8j7 <= 1
 0 <= f0t1i7j9 <= 1
 0 <= f0t1i9j7 <= 1
 0 <= f0t1i8j9 <= 1
 0 <= f0t1i9j8 <= 1
Binaries
 x7t2  x2t0  x0t1  x1t6  x6t5  x5t4  x4t8  x8t9  x9t3  x0t5  x0t3  x1t4  x3t6 
 x4t6  x3t7  x3t5  x0t7  x1t2  x5t8  x6t9  x7t8  x2t3  x0t8  x2t6  x2t8  x5t9 
 x1t7  x4t7  x3t8  x2t5  x7t9  x1t5  x0t9  x1t8  x0t4  x4t9  x6t8  x2t4  x2t9 
 x1t3  x5t7  x3t4  x1t9  x0t6  x6t7 
End
