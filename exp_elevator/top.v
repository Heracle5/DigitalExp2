module top(input clk,
input start_stop,
input reset,
input [3:0] col,
input [3:0] row,
output[3:0] led,
output[5:0] dig,
output[7:0] seg);
wire clk_1k;
wire clk_50;
clk_div clk_div(.clk_in(clk),.clk_out_1khz(clk_1k),.clk_out_50hz(clk_50));

end