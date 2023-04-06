`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 12:11:54 AM
// Design Name: 
// Module Name: dmem
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

module dmem(input clk,we,re,
    input [31:0]a,wd,
    output wire [31:0]rd);
reg [31:0]RAM[63:0];
assign rd = re?RAM[a[31:2]]:'bz;//word aligned
always @(posedge clk)
begin
    RAM[0]=32'b0;
    RAM[1]=32'b1;
    if(we) RAM[a[31:2]] <= wd;
end
endmodule