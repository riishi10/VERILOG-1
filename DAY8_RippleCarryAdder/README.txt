## 4-bit Ripple Carry Adder
Structural model chaining 4 Full Adders.
Each Full Adder is built from two Half Adders.
Inputs: A[3:0], B[3:0], Cin
Outputs: Sum[3:0], Cout
Handles overflow — Cout goes high when result exceeds 4 bits.