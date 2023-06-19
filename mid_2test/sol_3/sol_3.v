module detector(
        output y_out,
        input x_in,clock,reset
    );
    reg [2:0] state;
    parameter S0=3'b000,
        S1=3'b001,
        S2=3'b010,
        S3=3'b011,
        S4=3'b100,
        S5=3'b101;
    always@(posedge clock,negedge reset)
        if(~reset)state<=3'b000;
        else case(state)
            S0:if(~x_in)state<=S1;
            S1:if(x_in)state<=S2;  
            S2:state<=S3;
            S3:state<=S4;
            S4:state<=S5;
            S5:state<=S0;  
        endcase
    assign y_out = (state[1]&&(~(state[0]))) || (state[1]&&state[0]);
endmodule