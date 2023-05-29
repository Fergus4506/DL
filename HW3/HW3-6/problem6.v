module problem6(
        input x_in,reset,clock,
        output y_out
    );
    reg[1:0]state;
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    always@(posedge clock,negedge reset)
        if(reset==0)state<=S0;
        else case(state)
            S0:if(x_in) state<=S1; else state<=S0;
            S1:if(x_in) state<=S2; else state<=S1;
            S2:if(x_in) state<=S1; else state<=S3;
            S3:if(x_in) state<=S0; else state<=S2;
        endcase
    assign y_out=state[0]|state[1];
endmodule