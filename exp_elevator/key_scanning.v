module key_scanning(input[3:0] col,
input clk_scan,
input clk_50,
output reg[3:0] row=4'b0001,
output up_outside,
output down_outside,
output up_inside,
output down_inside
);
reg[15:0] btn=0;
always@(posedge clk_scan) 
begin
    if (col == 0) begin
        up_outside <= 1;
        down_outside <= 1;
        up_inside <= 0;