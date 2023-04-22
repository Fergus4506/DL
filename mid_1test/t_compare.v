module t_compare;
    reg [4:0] A,B;
    wire S,Ab,Bb;

    compare uut(
        .S(S),
        .Ab(Ab),
        .Bb(Bb),
        .A(A),
        .B(B)
    );

    initial begin
        A=5'b00000;
        B=5'b00000;
        #50 A=5'b01100;
            B=5'b00110;
        #50 A=5'b01100;
            B=5'b01110;
        #50 A=5'b11110;
            B=5'b11110;
    end
    initial #150 $finish;
endmodule