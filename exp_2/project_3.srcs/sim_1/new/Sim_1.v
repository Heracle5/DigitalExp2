`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 17:21:15
// Design Name: 
// Module Name: Sim_1
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


module sim_1;
    reg  [3:0] ain;
    wire [7:0] seg;
    wire [5:0] dig;
    
    digitaltube  uut(ain,seg,dig);
    initial
       begin 
        ain = 0;
       end    
    always #10 ain = ain+1;
endmodule
