module tb_Serial_adder_nonblocking;
	reg shift_control, clk, serial_input, clear, select_A, serial_input_A;
	
	Serial_adder_nonblocking M1(shift_control, clk, serial_input, clear, select_A, serial_input_A);
	initial #150 $finish;
	initial begin clk = 0; forever #5 clk =  !clk; end
	initial fork
	   clear = 0;
	   #5 clear = 1; 
	   #15 begin
	       shift_control = 1; select_A = 0; serial_input_A = 1;  serial_input = 1;
	       end 
	   #25 begin
	       serial_input_A = 0; serial_input = 1;
	       end
	   #35 begin
	       serial_input_A = 1; serial_input = 1;
	       end
	   #45 begin
	       serial_input_A = 0; serial_input = 0;
	       end
	   #55 begin 
	       shift_control = 0;
	       select_A = 1;
	       end
	   #75 begin
	        shift_control = 1;
	       end
	   #120 shift_control = 0;
	   
	join
    
endmodule
