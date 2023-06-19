module shift_3_reg(
	input clk, SI, rst,
	output reg SO
	);
	
	reg [2:0] reg_data;
	
	always @ (posedge clk, negedge rst)
		if(!reset)	reg_data <= 3'b000;
		else
			begin
				SO <= reg_data[0];
				reg_data <= {SI, reg_data[2:1]};
			end
endmodule