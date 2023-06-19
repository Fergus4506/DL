module detector_more3(
        output y_out,
        input x_in,clock,reset
    );
    reg[1:0]state;
    parameter S0=2'b00,
        S1=2'b01,
        S2=2'b10,
        S3=2'b11;
    always@(posedge clock,negedge reset)
        if(~reset) state <= S0;
        else case(state)
            S0:if(x_in)state<=S1;
            S1:if(x_in)state<=S2;else state<=S0;
            S2:if(x_in)state<=S3;else state<=S0;
            S3:if(x_in)state<=S3;else state<=S0;
        endcase
    assign y_out=(state[1]&&state[0]);
endmodule