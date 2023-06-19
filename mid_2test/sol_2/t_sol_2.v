module tb_shift_Register_3bit;
    wire [2:0] A_par;
    reg [2:0] I_par;
    reg s1,s0,MSB_in,LSB_in,CLK,Clear_b;

    shift_Register_3bit uut(
        .A_par(A_par),
        .I_par(I_par),
        .s1(s1),
        .s0(s0),
        .MSB_in(MSB_in),
        .LSB_in(LSB_in),
        .CLK(CLK),
        .Clear_b(Clear_b)
    );

    initial #200 $finish;
    always #10 CLK=~CLK;
    initial fork
        #0 CLK=0;
        #0 s0=0;s1=0;
        #0 Clear_b=0;
        #25 Clear_b=1;
        #0 MSB_in=1;
        #0 LSB_in=1;
        #0 I_par=3'b101;
        #45 s0=1;
        #80 s1=1;
        #80 s0=0;
        #120 s0=1;
    join
endmodule