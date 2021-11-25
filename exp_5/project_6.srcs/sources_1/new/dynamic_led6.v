`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:26:43
// Design Name: 
// Module Name: dynamic_led6
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


module dynamic_led6(
input [3:0]disp_data_right0,
input [3:0]disp_data_right1,
input [3:0]disp_data_right2,
input [3:0]disp_data_right3,
input [3:0]disp_data_right4,
input [3:0]disp_data_right5,
input clk,
output  reg  [7:0] seg,
output  reg  [5:0] dig
	);
//1KHz的clk_div信号用于动态显示
reg[24:0] clk_div_cnt=0;
reg clk_div=0;//赋初值
always @ (posedge clk)
begin
     if (clk_div_cnt==24999)
	   begin
		clk_div=~clk_div;
		clk_div_cnt=0;
	   end
    else 		         
       clk_div_cnt=clk_div_cnt+1;
    end
	//6进制计数器
 reg [2:0] num=0;
always @ (posedge clk_div)
	begin
		if (num>=5)
			num=0;
		else
           num=num+1;
	      end
	//译码器
	always @ (num)
	begin	
		case(num)
		0:dig=6'b111110;
		1:dig=6'b111101;
		2:dig=6'b111011;
		3:dig=6'b110111;
        4:dig=6'b101111;
        5:dig=6'b011111;
		default: dig=0;
		endcase
	end
    reg [3:0] disp_data;
	always @ (num)
	begin	
		case(num)
		0:disp_data=disp_data_right0;
		1:disp_data=disp_data_right1;
		2:disp_data=disp_data_right2;
		3:disp_data=disp_data_right3;
        4:disp_data=disp_data_right4;
        5:disp_data=disp_data_right5;
		default: disp_data=0;
		endcase
    end
    //显示译码器
	always@(disp_data)
	begin
		case(disp_data)
		4'h0: seg=8'h3f;// DP,GFEDCBA
		4'h1: seg=8'h06;
		4'h2: seg=8'h5b;
		4'h3: seg=8'h4f;
		4'h4: seg=8'h66;
		4'h5: seg=8'h6d;
		4'h6: seg=8'h7d;
		4'h7: seg=8'h07;
		4'h8: seg=8'h7f;
		4'h9: seg=8'h6f;
        4'ha: seg=8'h77;
		4'hb: seg=8'h7c;
		4'hc: seg=8'h39;
		4'hd: seg=8'h5e;
		4'he: seg=8'h79;
		4'hf: seg=8'h71;
		default: seg=0;
		endcase
	end
   
endmodule 		