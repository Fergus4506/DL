module D_ff(Q,D,clk,reset);
    output reg Q;
    input D,clk,reset;
    always@(posedge clk,negedge reset)
        if(~reset)Q<=0;
        else Q<=D;

endmodule

module probelm3(clk,reset,state);
    input clk,reset;
    output [2:0]state;
    wire A,B,C;
    assign A=state[2]^state[1],
           B=state[0]|(state[2]&(~state[1])),
           C=(~state[0])&(~state[1])&(~state[2]);
    D_ff m1(state[0],C,clk,reset);
    D_ff m2(state[1],B,clk,reset);
    D_ff m3(state[2],A,clk,reset);

endmodule