`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:49:16
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
input clkin,
input clr,
output[7:0] seg,
output[5:0] dig
    );
    wire[3:0] q;
    wire clk_sec;
    div_clk div_CLK(.clk(clkin),.clk_1hz(clk_sec));
    counter_10 counter(.clr(clr),.clk_sec(clk_sec),.q(q));
    decoder_7seg decoder(.ain(q),.seg(seg),.dig(dig));
endmodule
