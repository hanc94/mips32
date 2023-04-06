`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 12:11:54 AM
// Design Name: 
// Module Name: imem
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


module imem(a, rd);

output [31:0]rd;
input [31:0]a;
reg [31:0]RAM[63:0];
initial
    begin
        $readmemb("/home/changua/Documents/2021-1/dda/mips32/mips32.srcs/sources_1/new/memfile.dat",RAM);
    end
    assign rd=RAM[a];
endmodule
