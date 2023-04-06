`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2021 10:30:39 AM
// Design Name: 
// Module Name: controlpath_tb
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


module controlpath_tb;
    reg [5:0]Instruccion;
    reg Zero;
    reg [5:0]campoFuncion;
    wire regDest;
    wire leerMem;
    wire memaReg;
    wire escrMem;
    wire fuenteALU;
    wire escrReg;
    wire SelFuentePc;
    wire [2:0]ControldeALU;
    
    controlpath UUT(.instruccion(Instruccion),.CampoFuncion(campoFuncion),.zero(Zero),
    .RegDest(regDest),.LeerMem(leerMem),.MemaReg(memaReg),
    .EscrMem(escrMem),.FuenteALU(fuenteALU),.EscrReg(escrReg),
    .selFuentePc(SelFuentePc),.controldeALU(ControldeALU));
    
initial
    
begin
    Instruccion = 6'b000000;
    campoFuncion = 6'b100000;
    #200;
    Instruccion= 6'b100011;
    campoFuncion = 6'bxxxxxx;
    #200;
    Instruccion= 6'b101011;
    campoFuncion = 6'bxxxxxx;
    #200;
    Instruccion= 6'b000100;
    campoFuncion = 6'bxxxxxx;
end
endmodule
