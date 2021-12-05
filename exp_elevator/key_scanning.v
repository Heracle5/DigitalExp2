module key_scanning(input[3:0] col,
input clk,
output reg[3:0] row,
output up_outside,
output down_outside,
output up_inside,
output down_inside
);
