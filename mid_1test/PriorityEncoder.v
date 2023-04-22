module  PriorityEncoder(x,y,V,D);
    input [3:0]D;
    output x,y,V;
    assign y=((!D[2])&&(D[1]))||D[0],
    x=D[3]||D[2],
    V=x||D[0]||D[1];
endmodule