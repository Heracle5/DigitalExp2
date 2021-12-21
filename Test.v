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