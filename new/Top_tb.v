`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2021 03:31:30 PM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb;

reg clk;
reg reset;
Top UUT(.CLK(clk),.Reset(reset));

always
begin 
    #100;
    clk <= 1'b1;
    #100;
    clk <= 1'b0;
    
end
initial
begin 
    
    reset =1'b1;
    #100;
    reset =1'b0;
end

endmodule
