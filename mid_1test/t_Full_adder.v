module t_Full_adder;
    reg x,y,z;
    wire S,C;

    Full_adder uut(
        .S(S),
        .C(C),
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        x=0;y=0;z=0;
        repeat(2)
            #10 x=1'b1;
            #10 y=1'b1;
            #10 z=1'b1;
            #10 x=1'b0;
            #10 y=1'b0;
            #10 z=1'b0;

    end
initial #150 $finish;

endmodule