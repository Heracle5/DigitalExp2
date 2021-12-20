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
output reg [1:0] state,
output reg [1:0] floor,
output reg buzzer
);
reg [31:0] cnt=0;
always@(posedge clk_50mhz)
begin
if(!rst)
begin
    led_drive<=0;
    state<=0;
    floor<=1;
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
            if((state==1)&&(toOne))
            begin
            led_drive=led_drive+4'b0100;
            flag=1;
            end
            else if((state==1)&&(up))
            begin
            led_drive=led_drive+4'b0010;
            flag=1//下行
            end
            else if((state==2)&&(toTwo))
            begin
            led_drive=led_drive+4'b1000;
            flag=2
            end
            else if((state==2)&&(down))
            begin
            led_drive=led_drive+4'b0001;
            flag=2;
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
      state=2;
      led_drive=led_drive-4'b1000;
    end
    else if(flag==2)
    begin
      flag=0;
      state=1;
      led_drive=led_drive-4'b0100;
    end
end
end
endmodule