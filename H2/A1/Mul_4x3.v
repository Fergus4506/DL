module half_adder (S, C, x, y);
  output 	S, C;
  input	x, y;

  xor (S, x, y);
  and (C, x, y);
endmodule

// Description of full adder
module full_adder (S, C, x, y, z);
  output 	S, C;
  input	x, y, z;
  wire	S1, C1, C2;

// Instantiate half adders
  half_adder HA1 (S1, C1, x, y);
  half_adder HA2 (S, C2, S1, z);
  or G1 (C, C2, C1);
endmodule

// Description of 4-bit adder (see Fig 4-9)
module ripple_carry_4_bit_adder ( S, C4, A, B, C0);
  output [3: 0] 	S;
  output	C4;
  input [3: 0]	A, B;
  input		C0;
  wire 		C1, C2, C3;	// Intermediate carries
// Instantiate chain of full adders
  full_adder	
	FA0 ( S[0], C1, A[0], B[0], C0),
	FA1 ( S[1], C2, A[1], B[1], C1),
	FA2 ( S[2], C3, A[2], B[2], C2), 
	FA3 ( S[3], C4, A[3], B[3], C3);
endmodule

module Mul_4x3(
    input [2:0] A,
    input [3:0] B,
    output [6:0] C
    );

    wire [2:0] X1;
    wire [3:0] X2;
    wire [3:0] Y1;
    wire [3:0] Y2;

    and G1(C[0],B[0],A[0]);
    and G2(X1[0],B[1],A[0]);
    and G3(X1[1],B[2],A[0]);
    and G4(X1[2],B[3],A[0]);

    and G5(X2[0],B[0],A[1]);
    and G6(X2[1],B[1],A[1]);
    and G7(X2[2],B[2],A[1]);
    and G8(X2[3],B[3],A[1]);

    and G9(Y2[0],B[0],A[2]);
    and G10(Y2[1],B[1],A[2]);
    and G11(Y2[2],B[2],A[2]);
    and G12(Y2[3],B[3],A[2]);

    ripple_carry_4_bit_adder Adder1(
        .S({Y1[2],Y1[1],Y1[0],C[1]}),
        .C4(Y1[3]),
        .A({0,X1[2],X1[1],X1[0]}),
        .B(X2),
        .C0(0)
    );
    ripple_carry_4_bit_adder Adder2(
        .S({C[5],C[4],C[3],C[2]}),
        .C4(C[6]),
        .A(Y1),
        .B(Y2),
        .C0(0)
    );

endmodule

