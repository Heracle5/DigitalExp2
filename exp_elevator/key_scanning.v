module key_scanning(input[3:0] col,
input clk,
output reg[3:0] btn,
output reg[3:0] row
);
assign row[3:0]=0001;
always@(posedge clk)
begin
case(col[3:0])
  4'b0001:btn[3:0]=0001;
  4'b0010:btn[3:0]=0010;
  4'b0100:btn[3:0]=0100;
  4'b1000:btn[3:0]=1000;
endcase
end
endmodule
