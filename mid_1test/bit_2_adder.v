module bit_2_adder(
        input [1:0]A,[1:0]B,
        output [1:0]S,C
    );
    wire t_C;
    Full_adder adder1(
        .C(t_C),
        .S(S[0]),
        .x(A[0]),
        .y(B[0]),
        .z(0)
    );
    Full_adder adder2(
        .C(C),
        .S(S[1]),
        .x(A[1]),
        .y(B[1]),
        .z(t_C)
    );
endmodule