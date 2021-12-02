`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 16:32:02
// Design Name: 
// Module Name: running_leds
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


module running_leds(
input clk,
input m,
output reg[11:0] leds
    );
    reg[3:0] s_present=0;
    reg[3:0] s_next;
    always@(m,s_present)
    begin
    if(m&(s_present==6)|(s_present==9))
    begin
    s_next=0;
    end
    else
    begin
    s_next=s_present+1;
    end
    end
    always@(negedge clk)
    begin
    s_present<=s_next;
    end
    always@(m,s_present)
    begin
    if(m)
    begin
    case(s_present)
    0:leds=12'b0;
    1:leds=12'h60;
    2:leds=12'hf0;
    3:leds=12'h1f8;
    4:leds=12'h3fc;
    5:leds=12'h7fe;
    6:leds=12'hfff;
    default:leds=12'bxxxxxxxxxxxx;
    endcase
    end
    else
    begin
    case(s_present)
        0:leds=12'h801;
        1:leds=12'h402;
        2:leds=12'h204;
        3:leds=12'h108;
        4:leds=12'h90;
        5:leds=12'h60;
        6:leds=12'h90;
        7:leds=12'h108;
        8:leds=12'h204;
        9:leds=12'h402;
        default:leds=12'bxxxxxxxxxxxx;
        endcase
    end
    end
endmodule
