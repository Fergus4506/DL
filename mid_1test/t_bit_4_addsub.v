module t_bit_4_addsub;
    reg [3:0]A,B;
    reg M;
    wire C,V;
    wire [3:0]S;

    bit_4_addsub uut(
        .C(C),
        .V(V),
        .S(S),
        .A(A),
        .B(B),
        .M(M)
    );

    initial begin
        A=0;B=0;M=0;
        repeat(4) begin
            #20 B=B+4'b0101;
            #20 A=A+4'b0101;
            #10 M=~M;
        end
    end
    initial #200 $finish;
endmodule