module mux_2x1_df ( 
  output	m_out,
  input 	A, B,
  input	select
 );  
  assign m_out = (select)? A : B;
 endmodule
