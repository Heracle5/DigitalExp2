`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:42:34
// Design Name: 
// Module Name: digitaltube
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


module digitaltube(input   [3:0] ain,
    output [7:0] seg,
    output [5:0] dig
    );
    reg [7:0] seg;
    assign dig=6'b011111;
always@(ain)       
        case(ain)
        4'b0001: seg = 8'b11101110;
        4'b0010: seg = 8'b11111110;
        4'b0011: seg = 8'b10011100;
        4'b0100: seg = 8'b11111100;
        4'b0101: seg = 8'b10011110;
        4'b0110: seg = 8'b10001110;
          default: seg = 8'b00000000;
        endcase
 endmodule
