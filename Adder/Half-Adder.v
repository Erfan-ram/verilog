module half_adder (x,y,c,s);
  input x,y;
  output c,s;
  xor (s,x,y);
  and(c,x,y);
endmodule