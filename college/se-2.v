module Full_adder (x,y,cin,s,c);

input x,y,cin;
output s,c;

wire w1,w2,w3;

xor (s,x,y,cin);

and (w1,x,cin);
and (w2,y,cin);
and (w3,x,y);

or (c,w1,w2,w3);

endmodule