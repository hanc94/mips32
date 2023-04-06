`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2020 08:22:53 AM
// Design Name: 
// Module Name: imem_tb
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


module imem_tb;
reg [31:0]a;
wire [31:0]rd;

imem UUT(.a(a),.rd(rd));

initial
 begin
    a=31'b0000;
    #50;
    a=31'b0001;
    #50;
    a=31'b0010;
    #50;
    a=31'b0011;
    #50;
    a=31'b0100;
    #50;
    a=31'b0101;
    #50;
    a=31'b0111;
    #50;
    a=31'b1000;
    #50;
    a=31'b1001;
    #50;
    a=31'b1010;
    #50;
    a=31'b1100;
    #50;
    a=31'b1101;
    #50;
    a=31'b1110;
    #50;
    a=31'b1111;
    
end
endmodule