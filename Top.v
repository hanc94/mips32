`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2021 09:07:59 PM
// Design Name: 
// Module Name: Top
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


module Top(input CLK,Reset,output Zero);

    wire [5:0]Instruccion;
    wire [5:0]campoFuncion;
    //wire Zero;
    wire regDest;
    wire leerMem;
    wire memaReg;
    wire escrMem;
    wire fuenteALU;
    wire escrReg;
    wire SelFuentePc;
    wire [2:0]controlDeALU;
   
    
    datapath DataPath(.reset(Reset),.clk(CLK),
    .RegDest(regDest),.LeerMem(leerMem),.MemaReg(memaReg),
    .EscrMem(escrMem),.FuenteALU(fuenteALU),.EscrReg(escrReg),
    .FuentePC(SelFuentePc),.ControlALU(controlDeALU),.instrucc(Instruccion),
    .CampoFuncion(campoFuncion),.zero(Zero));
    controlpath ControlPath(.instruccion(Instruccion),.CampoFuncion(campoFuncion),
    .zero(Zero),.RegDest(regDest),.LeerMem(leerMem),.MemaReg(memaReg),.EscrMem(escrMem),
    .FuenteALU(fuenteALU),.EscrReg(escrReg),.selFuentePc(SelFuentePc),.controldeALU(controlDeALU));

endmodule
