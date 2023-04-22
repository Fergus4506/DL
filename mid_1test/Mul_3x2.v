module Mul_3x2(S,A,B);
    input [1:0]A;
    input [2:0]B;
    output [3:0]S;

    wire [1:0]T1;
    wire [2:0]T2;
    wire T;

    and G1(S[0],A[0],B[0]),
        G2(T1[0],A[0],B[1]),
        G3(T1[1],A[0],B[2]),
        G4(T2[0],A[1],B[0]),
        G5(T2[1],A[1],B[1]),
        G6(T2[2],A[1],B[2]);
    
    bit_4_addsub adder1(
        .S({T,S[3],S[2],S[1]}),
        .C(),
        .V(),
        .M(0),
        .A({0,0,T1[1],T1[0]}),
        .B({0,T2[2],T2[1],T2[0]})
    );


endmodule