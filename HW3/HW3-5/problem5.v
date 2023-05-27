module problem5(
        input x_in,reset,clock,
        output y_out
    );
    reg[2:0]state,y_out;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11,g=3'b100;
    always@(posedge clock,negedge reset)
        if(reset==0)begin state<=S0; y_out=0;end
        else case(state)
            S0:if(x_in) begin state<=S1; y_out=1; end else begin state<=S0; y_out=1; end
            S1:if(x_in) begin state<=S1; y_out=1; end else begin state<=S2; y_out=1; end
            S2:if(x_in) begin state<=S3; y_out=1; end else begin state<=S3; y_out=1; end
            S3:if(x_in) begin state<=S2; y_out=0; end else begin state<=S3; y_out=0; end
        endcase
endmodule