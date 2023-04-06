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


module mux2_tb;

parameter WIDTH = 32;
reg [WIDTH-1:0]d0;
reg [WIDTH-1:0]d1;
reg s;
wire [WIDTH-1:0]y;

mux2 #(WIDTH)UUT(.d0(d0),.d1(d1),.s(s),.y(y));

initial
    begin
    #25; 
    d0 = 32'b1001001001001000;
    d1 = 32'b1001001001001001;
    #50;
    s=1'b1;
    #50;
    s=1'b0;
    end
endmodule