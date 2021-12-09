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
	input EN;               //ʹ���ź�
	output cy;              //��������λ���
	output reg [3:0] Q;     // �����������
        //reg[3:0] temp;
         always @(posedge clk or negedge clr)  //�첽����
              begin
                  if (~clr)       //������Ч
                    begin 
                     Q<=9;
                   end          //���������������������Ϊ0
                  else if(EN==1)  //ʹ����Ч
                    begin
                     if (Q==0)    //����-1������λ�Ѿ�����С��1
                      begin 
                        Q<=9;      //�����ת����С��0
                        end
                     else Q<=Q-1;       //�����δ�����������ֻ��1
                     end
              end
               //�Ƶ������9��ͬʱʹ����Ч�����CyΪ1
              assign cy=((EN==1)&&(Q==0))?1'b1:1'b0;
endmodule
