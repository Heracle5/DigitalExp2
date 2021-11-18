`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 16:40:25
// Design Name: 
// Module Name: dyna_test
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


module dyna_test(
input clk,
output[7:0] seg,
output[5:0] dig
    );
    dynamic_led6_0 uu0(
    .clk(clk),
    .disp_data_right0(0),
    .disp_data_right1(1),
    .disp_data_right2(2),
    .disp_data_right3(3),
    .disp_data_right4(4),
    .disp_data_right5(5),
    .seg(seg),
    .dig(dig)
    );
endmodule
