module key_scanning(input[3:0] col,
input clk,
input rst,
output reg[3:0] btn,
output reg[3:0] row，
output up,
output down,
output toOne,
output toTwo,
);
assign row[3:0]=4'b0001;
always@(posedge clk)
if(rst)
begin
btn[3:0]=4'b0000;
end
else
begin
//case(col[3:0])
//  4'b0001:btn[3:0]=4'b0001;
//  4'b0010:btn[3:0]=4'b0010;
//  4'b0100:btn[3:0]=4'b0100;
//  4'b1000:btn[3:0]=4'b1000;
//endcase
assign btn<=col;
end
ajxd ajxd1(
  .btn_clk(clk),
  .btn_in(btn[0]),
  .btn_out(up),
);
ajxd ajxd2(
  .btn_clk(clk),
  .btn_in(btn[1]),
  .btn_out(down),
);
ajxd ajxd3(
  .btn_clk(clk),
  .btn_in(btn[2]),
  .btn_out(toOne),
);
ajxd ajxd4(
  .btn_clk(clk),
  .btn_in(btn[3]),
  .btn_out(toTwo),
);
endmodule
