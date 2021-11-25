`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:20:59
// Design Name: 
// Module Name: key_deboucing
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


module key_deboucing(
input clk,
input clr,
input col,
output [3:0] row,
output [7:0] seg,
output[5:0] dig
    );
    assign row[3:0]=0001;
    wire clk_20ms;
    wire btnout0;
    wire [11:0] showdat_d;
    wire [11:0] showdat_nod;
    //
    dynamic_led6 a(
    .clk(clk),
    .disp_data_right0(showdat_d[3:0]),
    .disp_data_right1(showdat_d[7:4]),
    .disp_data_right2(showdat_d[11:8]),
    .disp_data_right3(showdat_nod[3:0]),
    .disp_data_right4(showdat_nod[7:4]),
    .disp_data_right5(showdat_nod[11:8]),
    .dig(dig),
    .seg(seg)
    );
    //
    clk_div clk_div(.clk(clk),
    .btnclk(clk_20ms)
    );
    //
    reg[11:0] cnt1=0;
    assign showdat_d[11:0]=cnt1[11:0];
    //
    ajxd ajxd(.btn_in(col),
    .btn_out(btnout0),
    .btn_clk(clk_20ms));
    //
    always@(posedge btnout0)
    begin
    if(clr)
    begin
    cnt1<=0;
    end
    else
    begin
    cnt1<=cnt1+1;
    end
    end
    //
    reg[11:0] cnt2=0;
    assign showdat_nod[11:0]=cnt2[11:0];
    always@(posedge col)
    begin
    if(clr)
    begin
    cnt2<=0;
    end
    else
    begin
    cnt2<=cnt2+1;
    end
    end
    //
endmodule
