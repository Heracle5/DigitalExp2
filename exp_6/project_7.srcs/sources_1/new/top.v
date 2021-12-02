`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 16:25:06
// Design Name: 
// Module Name: top
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


module top(
input sel,
input clk,
output [11:0] led
    );
    wire bclk;
    clk_div clk_div(.CLK(clk),.divclk(bclk));
    running_leds running_leds(.clk(bclk),.leds(led),.m(sel));
endmodule
