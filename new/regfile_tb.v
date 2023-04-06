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


module regfile_tb;
reg clk;
reg we3;
reg [4:0]ra1;
reg [4:0]ra2;
reg [4:0]wa3;
reg [31:0]wd3;
wire [31:0]rd1,rd2;
regfile UUT(.clk(clk),.we3(we3),.ra1(ra1),.ra2(ra2),.wa3(wa3),.wd3(wd3),.rd1(rd1),.rd2(rd2));


always
begin 
    clk <= 1'b0;
    #50;
    clk <= 1'b1;
    #50;
end
initial
 begin
  #25;
  we3 = 1'b1;
  wd3 = 32'b1;
  wa3 = 5'b1;
  #50;
  we3 = 1'b0;
  #50;
  wd3 = 32'b0;
  wa3 = 5'b1;
  #50;
  ra1=5'b1;
  ra2=5'b0;
  
end
endmodule