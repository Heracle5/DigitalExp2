`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:34:14
// Design Name: 
// Module Name: decoder_7seg
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


module decoder_7seg(
input [3:0] ain,
output [7:0] seg,
output [5:0] dig
    );
    reg[7:0] seg;
    assign dig=6'b111110;
    always@(ain)
    case(ain)
    4'b0000:seg=8'b11111100;
    4'b0001:seg=8'b01100000;
    4'b0010:seg=8'b11011010;
    4'b0011:seg=8'b11110010;
    4'b0100:seg=8'b01100110;
    4'b0101:seg=8'b10110110;
    4'b0110:seg=8'b00111110;
    4'b0111:seg=8'b11100000;
    4'b1000:seg=8'b11111110;
    4'b1001:seg=8'b11100110;
    default:seg=8'b00000000;
    endcase
endmodule
