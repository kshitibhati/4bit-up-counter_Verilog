module counter4bitup_tb();
reg clk,reset;
wire [3:0] count;

count4bitup xiti (.clk(clk),.reset(reset),.count(count));

initial
begin
clk = 1;
forever
#10 clk = !clk;
end

initial
begin
@(negedge clk);
reset = 1; 
@(negedge clk);
reset = 0;
repeat (14)
@ (negedge clk);
$finish;
end
endmodule
