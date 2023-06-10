module DFF (D,clk,rst,Q);

input D,clk,rst;
output reg Q;

always @(posedge clk or posedge rst)
if(rst==1)
	Q<=0;
	
else
	Q<=D;
	
endmodule
