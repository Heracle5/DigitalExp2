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
    if (row[3:0] == 4'b1000) begin
        row[3:0] = 4'b0001;
    end
    else
    begin
        row[3:0] = row[3:0] + 1'b1;
    end
end
always@(posedge clk_scan)
begin
  case(row[3:0])
    4'b0001: 
    begin
    btn[3:0] = col;
    end
    4'b0010:
    begin
    btn[7:4] = col;
    end
    4'b0100:
    begin
    btn[11:8] = col;
    end
    4'b1000:
    begin
    btn[15:12] = col;
    end
default:
    btn = 0;
  endcase
end
