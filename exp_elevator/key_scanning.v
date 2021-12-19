module key_scanning(input[3:0] col,
input clk,
output reg[3:0] btn,
output reg[3:0] row，
//output up,
//output down,
//output toOne,
//output toTwo,
);
assign row[3:0]=4'b0001;
always@(posedge clk)
begin
assign btn<=col;
end
endmodule
