`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:27:41
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


module div_clk(
    clk,
    clk_1hz
    );
    input clk;
    output clk_1hz;
    integer count=0;
    reg clk_1hz=1'b0;
    always@(posedge clk)
    begin
    if(count==24999999)
    begin
     count<=0;
       clk_1hz<=~clk_1hz;
    end
    else
    begin
    count<=count+1;
    end
    end
endmodule
