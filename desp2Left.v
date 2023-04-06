`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2021 09:02:20 AM
// Design Name: 
// Module Name: desp2Left
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


module desp2Left #(parameter WIDTH=8)
(input [WIDTH-1:0]a, output [WIDTH-1:0]y);
    assign y=a<<1;
endmodule
