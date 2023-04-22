module t_bit_2_adder;
    reg [1:0]A,B;
    wire [1:0]S;
    wire C;
    bit_2_adder uut(
        .S(S),
        .C(C),
        .A(A),
        .B(B)
    );
    initial begin
        A=3'b000;
        B=3'b000;
        repeat(10) begin
            #10 A=A+3'b001;
            #10 B=B+3'b001;
        end
    end 
    initial #150 $finish;
endmodule