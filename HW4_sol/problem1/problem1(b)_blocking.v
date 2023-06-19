module D_flip_flop_AR (Q, D, Clk, rst);
  output 	Q;
  input	D, Clk, rst;
  reg 	Q;

  always @ (posedge Clk, negedge rst)	
    if (rst == 0) Q <= 1'b0;
    else Q <= D;	 
endmodule

module shift_reg_4(
	input shift_control,
	input clk,
	input SI,
	input reset,
	output reg SO 
	);	
	reg [3:0] data;
	always @ (posedge clk, negedge reset)
        if (~reset) 
            begin
                SO = 1'b0;
                data = 4'b0000;
            end
        else
          if(shift_control)
          begin
            data = {SI, data[3: 1]};
            SO = data[0];
          end
endmodule	
		
module JK_flip_flop (Q, J, K, Clk, RST_B);
  output 	Q;
  input	J, K, Clk, RST_B;
  wire	JK;
  assign	JK = (J & ~Q) | (~K & Q);
  D_flip_flop_AR M0 (Q, JK, Clk, RST_B);
 endmodule

module Serial_adder_blocking(
	input shift_control,
	input clk,
	input serial_input,
	input clear,
	input select_A, serial_input_A
	);
	
	wire x, y, S, J_in, K_in, JK_clk, C_i, SI_A;
	
	assign J_in = x & y;
    assign K_in = ~(x | y);
    assign JK_clk = shift_control & clk;
    assign S =  x ^ y ^ C_i;
    assign SI_A = (select_A)? S: serial_input_A;
    shift_reg_4 B(shift_control, clk, serial_input, clear, y);
    shift_reg_4 A(shift_control, clk, SI_A, clear, x);
	JK_flip_flop Carry(C_i, J_in, K_in, JK_clk, clear);
	
endmodule	
	
