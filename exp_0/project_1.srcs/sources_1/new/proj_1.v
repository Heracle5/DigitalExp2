`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 16:25:12
// Design Name: 
// Module Name: proj_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module proj_1(x,y);
input[9:0] x;
output[3:0] y;
reg[3:0] temp;
assign y=temp;
always @(x)
begin
if(x[9]==1) temp=4'b1001;
else if(x[8]==1) temp=4'b1000;
else if(x[7]==1) temp=4'b0111;
else if(x[6]==1) temp=4'b0110;
else if(x[5]==1) temp=4'b0101;
else if(x[4]==1) temp=4'b0100;
else if(x[3]==1) temp=4'b0011;
else if(x[2]==1) temp=4'b0010;
else if(x[1]==1) temp=4'b0001;
else if(x[0]==1) temp=4'b0000;
else temp=4'b0000;
end
endmodule
