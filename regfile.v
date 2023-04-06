`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 12:11:54 AM
// Design Name: 
// Module Name: regfile
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


module regfile(input clk, input we3, input[4:0]ra1,ra2,wa3, input [31:0]wd3, output [31:0]rd1,rd2);
reg [31:0]rf[31:0];
assign rd1 = (ra1!=0)?rf[ra1]:'d0;
assign rd2 = (ra2!=0)?rf[ra2]:'d0;
always @(negedge clk)
    begin
    rf[0] = 32'b0;
    if(we3 & wa3 != 32'b0) rf[wa3] = wd3;
    end
endmodule
