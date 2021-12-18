module dynamic_led(
    input[1:0] floor;
    input[1:0] state;
    input clk,
    output reg[7:0] seg,
    output reg[5:0] dig
);
always @(posedge clk) begin
    if()
