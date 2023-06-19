module p1(
    output y_out,
    output [1:0]state,
    input x_in,clk,rst
);
    reg[1:0] state;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    
    always@(posedge clk,negedge rst)
        if(~rst)state<=S0;
        else case(state)
            S0:if(x_in)state<=S1; else state<=S0;
            S1:if(x_in)state<=S2; else state<=S1;
            S2:if(x_in)state<=S3; else state<=S2;
            S3:if(x_in)state<=S1; else state<=S3;
        endcase
    assign y_out=(state==S3);
endmodule


