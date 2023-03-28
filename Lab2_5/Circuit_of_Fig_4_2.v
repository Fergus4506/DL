// Circuit_of_Fig_4_2.v
module Circuit_of_Fig_4_2 (
  output	F1, F2,
  input		A, B, C);
  wire	T1, T2, T3, F2_not, E1, E2, E3;	 
  
  or	G1	(T1,A,B,C);
  and	G2	(T2,A,B,C);
  and	G3	(E1,A,B);
  and	G4	(E2,A,C);
  and	G5	(E3,B,C);
  or	G6	(F2,E1,E2,E3);
  not	G7	(F2_not,F2);
  and	G8	(T3,T1,F2_not);
  or	G9	(F1,T2,T3);
endmodule