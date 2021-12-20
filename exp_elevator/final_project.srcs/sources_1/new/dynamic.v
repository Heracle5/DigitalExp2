`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/20 15:01:26
// Design Name:
// Module Name: dynamic
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

module dynamic(input clk,
input [3:0] state,
output reg [4:0] led,
input start_stop,
input reset);
reg[1:0] flag=2;
reg[5:0] state_reg;
always@(posedge clk)
begin
if(!reset)
begin
state_reg <= 0;
led=5'b00000;
end
else if(start_stop)
begin
if((state==0)&(flag==1))
begin
led = 5'b00001;
end
else if((state==0)&(flag==2))
begin
led= 5'b10000;
end
else if(state==2)
begin
if(state_reg==0)
begin
led=5'b01000;
state_reg=1;
end
else if(state_reg==1)
begin
led=5'b00100;
state_reg=2;
end
else if(state_reg==2)
begin
led=5'b00010;
state_reg=3;
end
else if(state_reg==3)
begin
led=5'b00001;
state_reg=0;
flag=1;
end
end
else if(state==1)
begin
if(state_reg==0)
begin
led=5'b00010;
state_reg=1;
end
else if(state_reg==1)
begin
led=5'b00100;
state_reg=2;
end
else if(state_reg==2)
begin
led=5'b01000;
state_reg=3;
end
else if(state_reg==3)
begin
led=5'b10000;
state_reg=0;
flag=2;
end
end
end
end
endmodule
