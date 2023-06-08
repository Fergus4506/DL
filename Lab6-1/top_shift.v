// top_shift.v
module top_shift(
    output [3: 0]	A_par,
    input	[3: 0] I_par,
    input	s1, s0,	
	MSB_in, LSB_in,
  	CLK, Clear_b
    );
    wire clk_1Hz;
    wire clear_not;
    assign clear_not = ~Clear_b;
    Shift_Register_4_beh Shift(
		.A_par(A_par),
		.I_par(I_par),
		.s1(s1),
		.s0(s0),
		.MSB_in(MSB_in),
		.LSB_in(LSB_in),
  		.CLK(clk_1Hz),
		.Clear_b(clear_not)
		);
    Freq_gen Gen(
                .clk_1Hz(clk_1Hz),
                .clock(CLK),
                .reset(clear_not)
            );  
endmodule
module Freq_gen(
    input clock,
    input reset,
    output clk_1Hz
    );
    reg [26:0] counter = 27'd0;
    reg mhz = 1'b0;
    always@(posedge clock, negedge reset)
    if(reset == 0)
        begin
            mhz <= 1'b0;
            counter <= 27'd0;
        end
    else
        begin
            counter <= counter + 1'b1;
            if(counter >= 27'd99999999)
	           counter <= 27'd0;
            else if(counter >= 27'd50000000)
                mhz <= 1'b1;
            else
                mhz <= 1'b0;
        end 
    assign clk_1Hz =  mhz;
endmodule

