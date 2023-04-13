module MUX_8x1_tb;
    reg A,B,C,D;
    wire F;

    MUX_8x1 uut(
        .F(F),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );

    initial begin
        A=0;B=0;C=0;D=0;
        #50 D=1;
        #50 B=1;
        #50 B=0;A=1;
    end
initial #200 $finish;
endmodule