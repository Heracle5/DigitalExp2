module top(input clk,
input start_stop,
input reset,
input [3:0] col,
input [3:0] row,
output[3:0] led,
output[5:0] dig,
output[7:0] seg);
wire clk_1k;
wire clk_50;
wire [4:0] btn;
wire up;
wire down;
wire toOne;
wire toTwo;
wire [1:0] state;
wire [1:0] floor;
clk_div clk_div(.clk_in(clk),.clk_out_1khz(clk_1k),.clk_out_50hz(clk_50));
key_scanning key_scanning(.col(col),.clk(clk),.btn(btn),.row(row));
ajxd ajxd1(.btn_clk(clk),.btn_in(btn[0]),.btn_out(up));
ajxd ajxd2(.btn_clk(clk),.btn_in(btn[1]),.btn_out(down));
ajxd ajxd3(.btn_clk(clk),.btn_in(btn[2]),.btn_out(toOne));
ajxd ajxd4(.btn_clk(clk),.btn_in(btn[3]),.btn_out(toTwo));
LogicProcessingUnited lpu(.up(up),.down(down),.toOne(toOne),.toTwo(toTwo),.clk_50mhz(clk),.rst(reset),.start_stop(start_stop),.led_drive(led),.state(state),.floor(floor));
dynamic_led dynamic_led(.floor(floor),.state(state),.clk(clk),.seg(seg),.dig(dig));
endmodule