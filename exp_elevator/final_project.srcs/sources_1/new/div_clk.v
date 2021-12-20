`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 23:32:27
// Design Name: 
// Module Name: div_clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_div(clk_in,clk_out_1khz,clk_out_50hz,clk_out_25hz
);
input clk_in;
output reg clk_out_1khz=0;
output reg clk_out_50hz=0;
output reg clk_out_25hz=0;
reg[24:0] clk_div_cnt_1=0;
reg[24:0] clk_div_cnt_2=0;
reg[24:0] clk_div_cnt_3=0;
//1khz
always @ (posedge clk_in)
begin
if (clk_div_cnt_1==24999)
begin
clk_out_1khz=~clk_out_1khz;
clk_div_cnt_1=0;
end
else
clk_div_cnt_1=clk_div_cnt_1+1'b1;
end
//50hz
always @ (posedge clk_in)
begin
if (clk_div_cnt_2==499999)
begin
clk_out_50hz=~clk_out_50hz;
clk_div_cnt_2=0;
end
else
clk_div_cnt_2=clk_div_cnt_2+1'b1;
end
//1hz
always @ (posedge clk_in)
begin
if (clk_div_cnt_3==24999999)
begin
clk_out_25hz=~clk_out_25hz;
clk_div_cnt_3=0;
end
else
clk_div_cnt_3=clk_div_cnt_3+1'b1;
end
endmodule
