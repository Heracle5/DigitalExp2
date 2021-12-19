`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 23:32:27
// Design Name: 
// Module Name: dynamic_led
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


module dynamic_led(
    input[1:0] floor,
    input[1:0] state,
    input clk,
    output reg[7:0] seg,
    output reg[5:0] dig
);
reg[1:0] num=0;
always @(posedge clk) begin
    if(num>=1)
    num=0;
    else
    num=num+1;
end
always @(num) begin
    case(num)
    0:dig=6'b111110;
    1:dig=6'b111101;
    default:dig=6'b000000;
    endcase
end
reg[3:0] disp_data;
always@(num) begin
    case(num)
    0:disp_data=floor;
    1:disp_data=state+3'b011;
    default:disp_data=0;
    endcase
    end
    //
    always@(disp_data)
    begin
      case(disp_data)
        0:seg=8'b00000000;
        1:seg=8'b00000110;
        2:seg=8'b01011011;
        3:seg=8'b01000000;
        4:seg=8'b00001000;
        5:seg=8'b00000001;
        default:seg=8'b00000000;
        endcase
    end
endmodule