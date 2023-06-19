module p2(
    output y_out,
    output [2:0]state,
    input x_in,clk,rst
);
    reg[2:0] state;
    parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110;
    
    always@(posedge clk,negedge rst)
        if(~rst)state<=S0;
        else case(state)
            S0:if(~x_in)state<=S1;else state<=S0;
            S1:if(x_in)state<=S2;else state<=S1;
            S2: state<=S3;
            S3: state<=S4;
            S4: state<=S5;
            S5: state<=S6;
            S6: state<=S0;
            S6: state<=S0;
        endcase
    assign y_out = (state==S2) ||(state ==S3) || (state==S4);
endmodule


