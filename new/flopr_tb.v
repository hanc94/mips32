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


module flopr_tb();
parameter WIDTH=32;
reg clk;
reg reset;
reg [WIDTH-1:0]d;
wire [WIDTH-1:0]q;

flopr #(WIDTH)UUT(clk,reset,d,q);

always
begin 
    clk <= 1'b0;
    #50;
    clk <= 1'b1;
    #50;
end

initial begin

    reset = 1'b1;
    #25;
    reset = 1'b0;
    d = 32'b000;
    #100;
    d = 32'b001;
    #100;
    //reset = 1'b1;
    d = 32'b010;
    #100;
    d = 32'b011;
    #100;
    d = 32'b100;
    #100;
    d = 32'b101;
    #100;
    d = 32'b110;
    #100;
    d = 32'b111;
    #100;
    d = 32'b1000;
    #100;
    d = 32'b1001;
    #100;
    d = 32'b1010;
    #100;
    d = 32'b1011;
    
end
endmodule