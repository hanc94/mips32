`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2021 08:52:32 PM
// Design Name: 
// Module Name: control_tb
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


module control_tb;

reg [5:0]instru;
wire RegDest,FuenteALU,MemaReg,EscrReg,LeerMem,EscrMem,SaltoCond,ALUOp1,ALUOp0;

control UUT(.instru(instru),.RegDest(RegDest),.FuenteALU(FuenteALU),.MemaReg(MemaReg),.EscrReg(EscrReg),.LeerMem(LeerMem),.EscrMem(EscrMem),.SaltoCond(SaltoCond),.ALUOp1(ALUOp1),.ALUOp0(ALUOp0));

initial
    begin
    #25;
    instru=6'bxxxxxx;
    #25;
    instru=6'b000000;
    #25;
    instru=6'b100011;
    #25;
    instru=6'b101011;
    #25;
    instru=6'b000100;
    #25;
    end 

endmodule
