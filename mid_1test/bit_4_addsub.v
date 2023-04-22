module bit_4_addsub(
        input [3:0]A,B,
        input M,
        output C,V,
        output [3:0]S
    );
    wire C1,C2,C3;
    wire [3:0]BXor;
    // assign BXor[0]=B[0]^M,
    //     BXor[1]=B[1]^M,
    //     BXor[2]=B[2]^M,
    //     BXor[3]=B[3]^M,
    //     V=C3^C;

    xor G1(BXor[0],M,B[0]);
	xor G2(BXor[1],M,B[1]);
	xor G3(BXor[2],M,B[2]);
	xor G4(BXor[3],M,B[3]);
	xor G5(V,C3,C);

    Full_adder 
        FA1(S[0],C1,A[0],BXor[0],M),
        FA2(S[1],C2,A[1],BXor[1],C1),
        FA3(S[2],C3,A[2],BXor[2],C2),
        FA4(S[3],C,A[3],BXor[3],C3);

    
endmodule