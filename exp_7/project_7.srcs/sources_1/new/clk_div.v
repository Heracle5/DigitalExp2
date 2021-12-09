`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:29:08
// Design Name: 
// Module Name: clk_div
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


module clk_div(clk_in,clk_out);
	input clk_in;
	output reg clk_out=0;//用reg后面always中需要改变数值
 	reg[24:0] clk_div_cnt=0;
//分频为5Hz的信号
        always @ (posedge clk_in)
        begin
            if (clk_div_cnt==4999999)//10M分频->1HZ
            begin
                clk_out=~clk_out;
                clk_div_cnt=0;
            end
            else 
                clk_div_cnt=clk_div_cnt+1;
       end
 endmodule
