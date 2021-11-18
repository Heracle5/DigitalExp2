`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:21:44
// Design Name: 
// Module Name: counter_10
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


module counter_10(
input clr,
input clk_sec,
output [3:0]q
    );
    reg[3:0] q;
    always @(posedge clk_sec)
    begin
    if(clr)
    begin q<=1'b0;
    end
    else if(q==4'b1001)
    begin
    q<=1'b0;
    end
    else
    begin
    q<=q+1'b1;
    end
    end
endmodule