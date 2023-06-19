module p4(
    output y_out,
    output [1:0]state,
    input x_in,clk,rst
);
    reg[1:0] state;
    reg y_out;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    
    always@(posedge clk,negedge rst)
        if(~rst)state<=S0;
        else case(state)
            S0:if(~x_in)begin state<=S2; y_out<=1; end
                  else begin state<=S1; y_out<=1; end
            S1:if(~x_in)begin state<=S1; y_out<=0; end
                  else begin state<=S1; y_out<=1; end
            S2:if(~x_in)begin state<=S3; y_out<=1; end
                  else begin state<=S1; y_out<=1; end
            S3:if(~x_in)begin state<=S2; y_out<=0; end
                  else begin state<=S1; y_out<=1; end
        endcase
endmodule


