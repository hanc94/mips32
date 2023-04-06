`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 12:11:54 AM
// Design Name: 
// Module Name: flopr
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


module flopr #(parameter WIDTH=8)
(input clk,reset,
 input [WIDTH-1:0]d,
 output reg [WIDTH-1:0]q);
 
always @(posedge clk, posedge reset)
    if(reset) q<=0;
    else q<=d;

endmodule
