module h_adder(
    output S,C,
    input A,B
    );
    assign S=A^B,
        C=A&B;
endmodule

module Full_adder(
    output S,C,
    input x,y,z
    );
    wire T_S,T_C1,T_C2;
    h_adder add1(
        .S(T_S),
        .C(T_C1),
        .A(x),
        .B(y)
    );
    h_adder add2(
        .S(S),
        .C(T_C2),
        .A(z),
        .B(T_S)
    );

    or(C,T_C2,T_C1);

endmodule