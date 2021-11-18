`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 17:30:23
// Design Name: 
// Module Name: 83encoder
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


module encoder_83(x,y);
		input[7:0] x;
		output[2:0] y;
  	 reg[2:0] y;
	
		always@(x)
		begin
			if(x[7]==1) y=3'b111;
			else if(x[6]==1) y=3'b110;
			else if(x[5]==1) y=3'b101;
			else if(x[4]==1) y=3'b100;
			else if(x[3]==1) y=3'b011;
			else if(x[2]==1) y=3'b010;
			else if(x[1]==1) y=3'b001;
			else if(x[0]==1) y=3'b000;
			else  y=3'b000;
		 end
endmodule
