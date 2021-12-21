//for div_clk dynamic and buzzer
module();
endmodule





//div_clk to 0.94s f=1/0.94=1.08hz,50M/1.08*2=?
always @ (posedge clk_in)
begin
if (clk_div_cnt_3==24999999)//change the number to 50M/1.08*2
begin
clk_out_25hz=~clk_out_25hz;
clk_div_cnt_3=0;
end
else
clk_div_cnt_3=clk_div_cnt_3+1'b1;
end
//state==2 上行 state==1 下行 state==3 reset
module dynamic(input clk,
input [3:0] state,
output reg [4:0] led,
input start_stop,
input reset,
input [1:0] floor);
//运行时间总共有4s，也即有1hz的时钟5个时钟上升沿，为了避免最后一个时钟上升沿无法检测到，将时钟周期略微缩小，T=4/4.25=0.94s
reg[1:0] flag=2;
reg[5:0] state_reg=0;
always@(posedge clk)//0.94s
begin
if((state==3)&&(floor==2))
begin
flag<=2;//欲下行
end
else if((state==3)&&(floor==1))
begin
flag<=3;//岿然不动，坚定不移，我继续担任共和国主席
end
else if(!start_stop)
begin
  state_reg=state_reg;
end
else if(start_stop)
begin
if(state==1)
begin
  flag<=1;//欲上行
end
else if(state==2)
begin
  flag<=2
end
else
begin
  flag<=3;
end
end
always@(posedge clk)
begin
  if(flag==1)
  begin
      if(state_reg==0)
      begin
        led<=5'b10000;
        state_reg<=1;
      end
      else if(state_reg==1)
      begin
        led<=5'b01000;
        state_reg<=2;
      end
      else if(state_reg==2)
      begin
        led<=5'b00100;
        state_reg<=3;
      end
      else if(state_reg==3)
      begin
        led<=5'b00010;
        state_reg<=4;
      end
      else if(state_reg==4)
      begin
        led<=5'b00001;
        state_reg<=0;
      end
  end
  else if(flag==2)
  begin
    if(state_reg==0)
      begin
        led<=5'b00001;
        state_reg<=1;
      end
      else if(state_reg==1)
      begin
        led<=5'b00010;
        state_reg<=2;
      end
      else if(state_reg==2)
      begin
        led<=5'b00100;
        state_reg<=3;
      end
      else if(state_reg==3)
      begin
        led<=5'b01000;
        state_reg<=4;
      end
      else if(state_reg==4)
      begin
        led<=5'b10000;
        state_reg<=0;
      end
  end
  else if(flag==3)
  begin
    led<=5'b00000;
  end
end
endmodule

//delete the buzzer,add another point to point out the state
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
output reg point
);
reg [3:0] flag=0;
reg [31:0] cnt=0;
always@(posedge clk_50mhz)
begin
if(!rst)
begin
if(cnt==199999999)
begin   
    cnt<=0;
led_drive<=0;
state<=0;
floor<=1;
end
else
begin
    cnt<=cnt+1;
    state<=3;
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
point=1;
end
else
begin
cnt=cnt+1;
point=0;
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

//
module beep(
input point,
input clk,//50Mhz
output reg buzzer
);
reg[31:0] cnt;
always@(posedge clk)
begin
  if(point==0)
  begin
    buzzer=0;
  end
  else if(point==1)
  begin
    if((cnt<2499999)&(cnt & 1'b1==1))
    begin
        buzzer<=1;
        cnt=cnt+1;
    end
    else if(cnt & 1'b1==0)
    begin
      buzzer<=0;
      cnt=cnt+1;
    end
    else if(cnt==2499999)
    begin
      cnt=0;
    end
    end
  end
end