`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:29:04
// Design Name: 
// Module Name: clk_div
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


module clk_div(clk,btnclk);
input clk;
output  btnclk;// 20ms两个输出
reg[31:0] btnclk_cnt = 0;//对50M时钟1M分频的计数器
reg btnclk = 0;//50Hz信号，周期20ms，初值为0 
always@(posedge clk) //系统时钟上升沿时 
         //20ms,50Hz,50M/50=1000000 ,1M分频
       begin
            if(btnclk_cnt==499999)
               begin
                    btnclk =~ btnclk;
                    btnclk_cnt = 0;
               end
            else
                begin
                   btnclk_cnt = btnclk_cnt+1'b1;
                end
            end
  endmodule