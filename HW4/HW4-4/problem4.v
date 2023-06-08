module problem4(SO,SI,clk,reset);
    output reg SO;
    input SI,clk,reset;
    reg [3:0]state;
    always@(posedge clk)
        SO<=state[0];
    always@(posedge clk,negedge reset)
        if(~reset)state<=4'b0000;
        else state<={SI,state[3:1]};
endmodule