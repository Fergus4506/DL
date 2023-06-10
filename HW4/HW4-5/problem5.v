module problem5(clk,reset);
    // output [7:0]Q;
    input clk,reset;
    reg [3:0]state;
    // assign Q[0]=(~state[3])&(~state[0]),
    //        Q[1]=(state[3])&(~state[2]),
    //        Q[2]=(state[2])&(~state[1]),
    //        Q[3]=(state[1])&(~state[0]),
    //        Q[4]=(state[3])&(state[0]),
    //        Q[5]=(state[2])&(~state[3]),
    //        Q[6]=(state[1])&(~state[2]),
    //        Q[7]=(state[0])&(~state[1]);
    always@(posedge clk,negedge reset)
        if(~reset)state<=4'b0000;
        else case(state)
            4'b0000:state<=4'b1000;
            4'b1000:state<=4'b1100;
            4'b1100:state<=4'b1110;
            4'b1110:state<=4'b1111;
            4'b1111:state<=4'b0111;
            4'b0111:state<=4'b0011;
            4'b0011:state<=4'b0001;
            4'b0001:state<=4'b0000;
        endcase

endmodule