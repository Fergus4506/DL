module problem2(reset,clk);
    input reset,clk;
    reg [3:0]state;
    always@(posedge clk,negedge reset)
        if(~reset)state<=4'b0000;
        else case(state)
            4'b0000:state<=4'b0001;
            4'b0001:state<=4'b0010;
            4'b0010:state<=4'b0011;
            4'b0011:state<=4'b0100;
            4'b0100:state<=4'b0101;
            4'b0101:state<=4'b0110;
            4'b0110:state<=4'b0111;
            4'b0111:state<=4'b1000;
            4'b1000:state<=4'b1001;
            4'b1001:state<=4'b0000;
        endcase
endmodule