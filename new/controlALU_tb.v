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


module controlALU_tb;

reg [5:0]campoFuncion;
reg [1:0]ALUOp;
wire [2:0]controlDeALU;
controlALU UUT(.campoFuncion(campoFuncion),.ALUOp(ALUOp),.controlDeALU(controlDeALU));

initial
 begin
  #25;
  campoFuncion=6'bxxxxxx;
  ALUOp = 2'b00;
  #25;
  campoFuncion=6'bxxxxxx;
  ALUOp = 2'b01;
  #25;
  campoFuncion=6'bxx0000;
  ALUOp = 2'b1x;
  #25;
  campoFuncion=6'bxx0010;
  ALUOp = 2'b1x;
  #25;
  campoFuncion=6'bxx0100;
  ALUOp = 2'b1x;
  #25;
  campoFuncion=6'bxx0101;
  ALUOp = 2'b1x;
  #25;
  campoFuncion=6'bxx1010;
  ALUOp = 2'b1x;
  #25;
  campoFuncion=6'b1x1010;
  ALUOp = 2'b1x;
  
end
endmodule 