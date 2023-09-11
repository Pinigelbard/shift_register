module shift_reg_4bit (d,rst,clk,Q);
input d,rst,clk;
reg q0,q1,q2;
output reg Q;
always @ (posedge clk)
if (rst)
q0 <= 0;
else 
q0 <= d;
always @(posedge clk)
if (rst)
q1 <= 0;
else
q1 <= q0;
always @(posedge clk)
if(rst)
q2 <= 0;
else
q2 <= q1;
always @(posedge clk)
if (rst)
Q <= 0;
else 
Q <= q2;
endmodule