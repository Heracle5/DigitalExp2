`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:27:11
// Design Name: 
// Module Name: dynamic_led3
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


module dynamic_led3(
input [3:0]disp_data_right0,
input [3:0]disp_data_right1,
//input [3:0]disp_data_right2,
input clk,
output reg [7:0] seg,
output reg [2:0] dig
    );
    
        //分频
        reg[24:0] clk_div_cnt=0;
        reg clk_div=0;
        always @ (posedge clk)
        begin
            if (clk_div_cnt==25000)
            begin
                clk_div=~clk_div;
                clk_div_cnt=0;
            end
            else 
                clk_div_cnt=clk_div_cnt+1;
        end
        //3进制计数器
        reg [1:0] num=0;
        always @ (posedge clk_div)
        begin
            if (num>=1)//
                num=0;
            else
                num=num+1;
        end
        
        //译码器
        always @ (num)
        begin    
            case(num)
            0:dig=3'b10;
            1:dig=3'b01;
            default: dig=0;
            endcase
        end
        
        //选择器，确定显示数据
        reg [3:0] disp_data;
        always @ (num)
        begin    
            case(num)
            0:disp_data=disp_data_right0;
            1:disp_data=disp_data_right1;
            //2:disp_data=disp_data_right2;
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
