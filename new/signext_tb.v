`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2020 08:22:53 AM
// Design Name: 
// Module Name: ffsync_tb
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


module signext_tb;

reg [15:0]a;
wire [31:0]y;
signext UUT(a,y);

initial
 begin
  #25;
  a = 16'b0111111111111111;
end
endmodule 