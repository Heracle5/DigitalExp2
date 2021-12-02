`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 16:43:47
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


module clk_div(
input CLK,
output reg divclk
    );
    reg[31:0] cnt=0;
    always@(posedge CLK)
    begin
    if(cnt==24999999)
    begin
    divclk=~divclk;
    cnt=0;
    end
    else
    begin
    cnt=cnt+1;
    end
    end
endmodule
