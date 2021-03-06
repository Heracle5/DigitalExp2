`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2021/12/19 23:32:27
// Design Name:
// Module Name: LogicProcessingUnited
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

module LogicProcessingUnited(
input up,
input down,
input toOne,
input toTwo,
input clk_50mhz,
input rst,
input start_stop,
output reg [3:0] led_drive,
output reg [3:0] state,
output reg [1:0] floor,
output reg buzzer
);
reg [3:0] flag=0;
reg [31:0] cnt=0;
reg [31:0] count=0;
always@(posedge clk_50mhz)
begin
if(!rst)
begin
if(count==199999999)
begin   
    count<=0;
    cnt<=0;
led_drive<=0;
state=0;
floor<=1;
end
else
begin
    count<=count+1;
    state=3;
end
end
else if(start_stop)
begin
if(led_drive)
begin
if(cnt==199999999)
begin
cnt<=0;
if(floor==1)
begin
floor=2;
end
else
begin
floor=1;
end
state=0;//00000010
led_drive=0;
buzzer=1;
end
else
begin
cnt=cnt+1;
buzzer=0;
if((led_drive==4'b1000)&&(toOne))
begin
led_drive=4'b1100;
flag=1;
end
else if((led_drive==4'b1000)&&(down))
begin
led_drive=4'b1001;
flag=2;//����
end
else if((led_drive==4'b0100)&&(toTwo))
begin
led_drive=4'b1100;
flag=3;
end
else if((led_drive==4'b0100)&&(up))
begin
led_drive=4'b0110;
flag=4;
end
end
end
else if((down)&&(state==0))//floor==1
begin
if(floor!=1)//==2
begin
state=1;//00010000
led_drive=4'b0001;
end
end
else if((up)&&(state==0))
begin
if(floor!=2)
begin
state=2;//10000000
led_drive=4'b0010;
end
end
else if((toOne)&&floor==2)
begin
state=1;//00010000
led_drive=4'b0100;
end
else if((toTwo)&&floor==1)
begin
state=2;//10000000
led_drive=4'b1000;
end
else if(flag==1)
begin
flag=0;
state=1;
led_drive=4'b0100;
end
else if(flag==2)
begin
flag=0;
state=1;
led_drive=4'b0001;
end
else if(flag==3)
begin
flag=0;
state=2;
led_drive=4'b1000;
end
else if(flag==4)
begin
flag=0;
state=2;
led_drive=4'b0010;
end
end
end
endmodule