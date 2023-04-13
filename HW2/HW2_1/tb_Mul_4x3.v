module tb_Mul_4x3;
    reg [2:0] A;
    reg [3:0] B;

    wire [5:0] C;

    Mul_4x3 uut(
        .C(C),
        .A(A),
        .B(B)
    );

    initial begin
        A=0;
        B=0;
        #50 A=3'b011;
            B=4'b0110;
        #50 A=3'b001;
            B=4'b0111;
        #50 A=3'b010;
            B=4'b1110;
    end
initial #200 $finish;
endmodule