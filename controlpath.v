`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2021 01:17:34 PM
// Design Name: 
// Module Name: controlpath
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


module controlpath(input [5:0]instruccion,CampoFuncion,input zero,output RegDest,LeerMem,MemaReg,EscrMem,FuenteALU,EscrReg,selFuentePc,output [2:0]controldeALU);

    wire ALUOp0;
    wire ALUOp1;
    wire saltoCond;
        
    control controlUnit(.instru(instruccion),.RegDest(RegDest),.FuenteALU(FuenteALU),.memaReg(MemaReg),.EscrReg(EscrReg),.LeerMem(LeerMem),.EscrMem(EscrMem),.SaltoCond(saltoCond),.ALUOp1(ALUOp1),.ALUOp0(ALUOp0));//unidad de control
    
    controlALU controlAlu(.campoFuncion(CampoFuncion),.ALUOp({ALUOp1,ALUOp0}),.controlDeALU(controldeALU));//control de la ALU
    
    fuentePC FuentePc(.SaltoCond(saltoCond),.zero(zero),.fuentePc(selFuentePc));//Control del salto
    
endmodule