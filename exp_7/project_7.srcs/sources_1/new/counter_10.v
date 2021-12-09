`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:29:39
// Design Name: 
// Module Name: counter_10
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


module counter_10(clk,clr,EN,Q,cy);
	input clk,clr;
	input EN;               //使能信号
	output cy;              //计数器进位输出
	output reg [3:0] Q;     // 计数器的输出
        //reg[3:0] temp;
         always @(posedge clk or negedge clr)  //异步清零
              begin
                  if (~clr)       //清零有效
                    begin 
                     Q<=9;
                   end          //完成清零操作，计数器输出为0
                  else if(EN==1)  //使能有效
                    begin
                     if (Q==0)    //计数-1，若低位已经到最小数1
                      begin 
                        Q<=9;      //输出跳转到最小数0
                        end
                     else Q<=Q-1;       //若输出未到最大数，则只加1
                     end
              end
               //计到最大数9，同时使能有效，输出Cy为1
              assign cy=((EN==1)&&(Q==0))?1'b1:1'b0;
endmodule
