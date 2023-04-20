module Full_adder_1bit (x,y,cin,sum,cout);

input x,y,cin;
output sum,cout;

wire w1,w2,w3;

xor (sum,x,y,cin);

and (w1,x,cin);
and (w2,y,cin);
and (w3,x,y);

or (cout,w1,w2,w3);

endmodule


module test_Full_adder_1bit;

reg _x,_y,_cin;
wire _sum,_cout;

Full_adder_1bit full(.x(_x),.y(_y),.cin(_cin),.sum(_sum),.cout(_cout));

initial begin
_x=1'b0; _y=1'b0; _cin=1'b0;

#10

_cin=1'b1;

#10

_y=1'b1; _cin=1'b0;

#10

_cin=1'b1;

#10

_x=1'b1; _y=1'b0; _cin=1'b0;

#10

_cin=1'b1;

#10

_y=1'b1; _cin=1'b0;

#10

_cin=1'b1;

end

endmodule
