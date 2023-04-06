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


module adder_tb;

reg [31:0]a;
reg [31:0]b;
wire [31:0]y;
adder UUT(a,b,y);

initial
 begin
  #25;
  a = 32'b1111111111111111;
  b = 32'b01;
end
endmodule 