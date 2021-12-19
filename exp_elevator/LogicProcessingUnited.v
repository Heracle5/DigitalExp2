module LogicProcessingUnited(
input up,
input down,
input toOne,
input toTwo,
input clk_0.25hz,
input clk_50mhz,
input rst,
input start_stop
output reg [3:0] led_drive,
output reg [1:0] state,
output reg [1:0] floor
);
reg [31:0] cnt=0;
always@(*)
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
            state=0;
            led_drive=0;
        end
        else
        else
        begin
            cnt=cnt+1;
        end
    end
    else if((up)&&(state==0))//floor==1
    begin
        if(floor!=1)//==2
        begin
            state=1;
            led_drive=4'b0001;
        end
    end
    else if((down)&&(state==0))
    begin
        if(floor!=2)
        begin
            state=2;
            led_drive=4'b0010;
        end
    end
    else if((toOne)&&floor==1)
    begin
        state=2;
        led_drive=4'b0100;
    end
    else if((toTwo)&&floor==2)
    begin
        state=1;
        led_drive=4'b1000;
    end
end
end
endmodule