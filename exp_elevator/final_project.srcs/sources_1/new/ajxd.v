`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 23:32:27
// Design Name: 
// Module Name: ajxd
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


module ajxd(
input btn_in,
input btn_clk,
output btn_out
    );
    reg btn0=0;
    reg btn1=0;
    reg btn2=0;
    always@(posedge btn_clk)
    begin
    btn0<=btn_in;
    btn1<=btn0;
    btn2<=btn1;
    end
    assign btn_out=(btn2&btn1&btn0)|(~btn2&btn1&btn0);
endmodule