`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 23:32:27
// Design Name: 
// Module Name: key_scanning
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


module key_scanning(input[3:0] col,
input clk,
output reg[3:0] btn,
output [3:0] row);
//output up,
//output down,
//output toOne,
//output toTwo,
assign row[3:0]=0001;
always@(posedge clk)
begin
btn<=col;
end
endmodule
