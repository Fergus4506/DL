module t_PriorityEncoder;
    reg [3:0]D;
    wire x,y,V;
    PriorityEncoder uut(x,y,V,D);

    initial begin
        D=4'b0000;
        #50 D=4'b1010;
        #50 D=4'b0110;
    end
    initial #150 $finish;
endmodule