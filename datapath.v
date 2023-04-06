`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2021 01:17:34 PM
// Design Name: 
// Module Name: datapath
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


module datapath(input reset,clk,RegDest,LeerMem,MemaReg,EscrMem,FuenteALU,EscrReg,FuentePC,input [2:0]ControlALU,output [5:0]instrucc,CampoFuncion,output zero);

    //Ancho de los buses de las conexiones del circuito. 
    parameter WIDTH32=32;
    parameter WIDTH8=8;
    parameter WIDTH5=5;
    parameter WIDTH4=4;
    parameter WIDTH3=3;
    parameter WIDTH2=2;
    
    //Contador y memoria de instrucciones.//ok
    wire [WIDTH32-1:0]inputPC;//Entrada del contador del programa.
    wire [WIDTH32-1:0]outAddPC;//Salida del sumador del PC.
    wire [WIDTH32-1:0]outBr;//salida del adder del salto.
    wire [WIDTH32-1:0]outdesp2Left;//saldia del desplazador condicionla del PC.
    wire [WIDTH32-1:0]instrucDirecction;//dirección proveniente del PC
    wire [WIDTH32-1:0]instruccion;//Instrucción Proveniente de la memoria de instrucciones.
    //Banco de regsitros de lectura de la memoria de instrucciones.
    wire [WIDTH5-1:0]muxregWrite;//Salida del mux del registro de escritura.//ok
    wire [WIDTH32-1:0]r1,r2;//Buses de salida de registros. Registro 1 y 2.
    //Unidad Aritmetica Logica (ALU).//ok
    wire [WIDTH32-1:0]signExtOut;//Salida del extensión de signo
    wire [WIDTH32-1:0]outMuxALU;//Salida del mux que selcciona el dato que va entrar a la ALU
    wire [WIDTH32-1:0]resALU;//Salida respuesta de la ALU//ok
       
    //Memoria de datos.
    wire [WIDTH32-1:0]outMuxMem;//MUX de salida de la memoria de datos.//ok
    wire [WIDTH32-1:0]readData;//Salida de la memoria datos.//ok
    
    //ila_0 ila(.clk(clk),.probe0(instruccion),.probe1(instrucDirecction));
    //Descripción de cada uno de los componentes del Datapath del MIPS32
    assign instrucc = instruccion[31:26];//salida del datapath
    assign CampoFuncion=instruccion[5:0];
    //Contador del programa.//ok
    flopr #(WIDTH32)Flopr(.clk(clk),.reset(reset),.d(inputPC),.q(instrucDirecction));//Contador del programa.
    adder #(WIDTH32)AdderPC(.a(instrucDirecction),.b(1),.y(outAddPC));//sumador del contador del programa.
    adder #(WIDTH32)AdderBr(.a(outAddPC),.b(outdesp2Left),.y(outBr));//sumador de salto condicional.
    desp2Left #(WIDTH32) Desp2Left(.a(signExtOut),.y(outdesp2Left));//Desplazador.
    mux2 #(WIDTH32)muxContador(.d0(outAddPC),.d1(outBr),.s(FuentePC),.y(inputPC));//mux del contador del programa
    //Memoria de instrucciones//ok
    imem Imem(.a(instrucDirecction),.rd(instruccion));//memoria de instrucciones
    //banco de registros.//ok
    mux2 #(WIDTH5)muxreg(.d0(instruccion[20:16]),.d1(instruccion[15:11]),.s(RegDest),.y(muxregWrite));//mux del registro.
    regfile regFile(.clk(clk),.we3(EscrReg),.ra1(instruccion[25:21]),.ra2(instruccion[20:16]),.wa3(muxregWrite),.wd3(outMuxMem),.rd1(r1),.rd2(r2));//Banco de registros.
     //Unidad Aritmetica Logica (ALU)//ok
    signext signExt(.a(instruccion[15:0]),.y(signExtOut));//extension de signo.
    mux2 #(WIDTH32)muxALU(.d0(r2),.d1(signExtOut),.s(FuenteALU),.y(outMuxALU));//mux de la ALU.
    ALU alu(.a(r1),.b(outMuxALU),.ControlALU(ControlALU),.yout(resALU),.zero(zero));//unidad aritmetica logica.
    //Memoria de datos.//ok
    dmem Dmem(.clk(clk),.we(EscrMem),.re(LeerMem),.a(resALU),.wd(r2),.rd(readData));//memoria de datos
    mux2 #(WIDTH32)muxmem(.d0(resALU),.d1(readData),.s(MemaReg),.y(outMuxMem));//mux de la memoria datos.
    
endmodule
