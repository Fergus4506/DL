module BCD_counter(
        input clock,reset,
        output [3:0] counter
    );
    reg [3:0]counter;
    always@(posedge clock,negedge reset)
        if(~reset) counter<=4'b0000;
        else case(counter)
            4'b0000:counter<=counter+1'b1;
            4'b0001:counter<=counter+1'b1;
            4'b0010:counter<=counter+1'b1;
            4'b0011:counter<=counter+1'b1;
            4'b0100:counter<=counter+1'b1;
            4'b0101:counter<=counter+1'b1;
            4'b0110:counter<=counter+1'b1;
            4'b0111:counter<=counter+1'b1;
            4'b1000:counter<=counter+1'b1;
            4'b1001:counter<=4'b0000;
        endcase
endmodule