`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:19:22
// Design Name: 
// Module Name: top
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


module top(
input clk_50M,
input CLR_L,
input start_stop,
output [7:0] seg,
output [1:0] dig
);
 //��Ƶ����
 reg EN=1;
wire clk_s;
//���տμ��϶���ģ������ͼ��������д����Ƶ��·���������
 
clk_div clk_div(.clk_in(clk_50M),.clk_out(clk_s));

//����������
         reg en;               //ʹ���ź�      
         wire[3:0] Q_0;// �����������
        wire cy_0;  //��λ�ź�
        wire[1:0] Q_1;
        wire cy_1;
//���տμ��϶���ģ������ͼ��������д��3����������·���������
always@(EN or start_stop)
begin
en=EN & start_stop;
end
counter_10 counter_10(.clk(clk_s),.clr(CLR_L),.EN(en),.cy(cy_0),.Q(Q_0));
counter_4 counter_4(.clk(clk_s),.clr(CLR_L),.EN(cy_0),.cy(cy_1),.Q(Q_1));       
     //����3λ�������ʾģ��
      wire[3:0] disp_data_right0,disp_data_right1;
      assign disp_data_right0=Q_0;
      assign disp_data_right1={2'h0,Q_1};
      always@(Q_0 or Q_1)
      begin
      if(Q_0==0&Q_1==0)
      begin
      EN=0;
      end
      else
      begin
      EN=1;
      end
      end   
      dynamic_led3 u5 (
                       .disp_data_right0(disp_data_right0),  // input wire [3 : 0] disp_data_right0
                       .disp_data_right1(disp_data_right1),  // input wire [3 : 0] disp_data_right1
                       .clk(clk_50M),                            // input wire clk
                       .seg(seg),                            // output wire [7 : 0] seg
                       .dig(dig)                            // output wire [2 : 0] dig
                       );
endmodule
                                      