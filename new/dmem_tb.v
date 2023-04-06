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


module dmem_tb();
reg we;
reg clk;
reg [31:0]a;
reg [31:0]wd;
wire [31:0]rd;

dmem UUT(clk,we,a,wd,rd);

always
begin 
    clk <= 1'b0;
    #50;
    clk <= 1'b1;
    #50;
end

initial begin

    we = 1'b0;
    #25
    a = 32'b100;
    wd = 32'b1;
    we = 1'b1;
    #50;
    we = 1'b0;
    a = a+3'b100;
    wd = 32'b0;
    #50;
    we = 1'b1;
    #50;
    we = 1'b0;
    #100
    a = 32'b100;
    
end
endmodule