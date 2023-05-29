module problem3(
        input x_in,reset,clock,
        output y_out
    );
    reg[2:0]state,y_out;
    parameter a=3'b000,b=3'b001,d=3'b010,f=3'b011,g=3'b100;
    always@(posedge clock,negedge reset)
        if(reset==0)begin state<=a; y_out=0;end
        else case(state)
            a:if(x_in) begin state<=f; y_out=0; end else begin state<=b; y_out=0; end
            b:if(x_in) begin state<=d; y_out=0; end else begin state<=a; y_out=0; end
            d:if(x_in) begin state<=g; y_out=1; end else begin state<=a; y_out=0; end
            f:if(x_in) begin state<=f; y_out=1; end else begin state<=b; y_out=1; end
            g:if(x_in) begin state<=g; y_out=0; end else begin state<=d; y_out=1; end  
        endcase
endmodule