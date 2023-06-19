module Toggle_flip_flop(Q,T,Clk,rst);
    output Q;
    input T,Clk,rst;
    reg Q;
    always@(posedge Clk,negedge rst)
        if(~rst)Q<=1'b0;
        else if(T)Q<=~(Q);
endmodule

module T_counter_3bit(
        input clock,reset,
        output [2:0]A
    );
    Toggle_flip_flop M1(A[0],1'b1,clock,reset);
    Toggle_flip_flop M2(A[1],A[0],clock,reset);
    Toggle_flip_flop M3(A[2],A[0]&A[1],clock,reset);
endmodule