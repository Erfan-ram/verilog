module Full_sub_1bit (x,y,bin,diff,bor);

input x,y,bin;
output diff,bout;

wire w1,w2,w3;

xor (diff,x,y,bin);

and (w1,x,bin);
and (w2,y,bin);
and (w3,x,y);

or (bout,w1,w2,w3);

endmodule


module test_Full_sub_1bit;

reg _x,_y,_bin;
wire _diff,_bout;

Full_sub_1bit full(.x(_x),.y(_y),.bin(_bin),.diff(_diff),.bout(_bout));

initial begin

_x=1'b0; _y=1'b0; _bin=1'b0;

#10

_x=1'b0; _y=1'b0; _bin=1'b1;

#10

_x=1'b0; _y=1'b1; _bin=1'b0;

#10

_x=1'b0; _y=1'b1; _bin=1'b1;

#10

_x=1'b1; _y=1'b0; _bin=1'b0;

#10

_x=1'b1; _y=1'b0; _bin=1'b1;

#10

_x=1'b1; _y=1'b1; _bin=1'b0;

#10

_x=1'b1; _y=1'b1; _bin=1'b1;

end

endmodule
