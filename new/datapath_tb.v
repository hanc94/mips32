`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2021 07:23:39 PM
// Design Name: 
// Module Name: datapath_tb
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


module datapath_tb;
reg clk;
reg reset;
reg RegDest;
reg LeerMem;
reg MemaReg;
reg [2:0]controlALU;
reg EscrMem;
reg FuenteALU;
reg EscrReg;
reg FuentePC;
wire [5:0]instrucc;

datapath UUT(.reset(reset),.clk(clk),.RegDest(RegDest),.LeerMem(LeerMem),.MemaReg(MemaReg),.ControlALU(controlALU),.EscrMem(EscrMem),.FuenteALU(FuenteALU),.EscrReg(EscrReg),.FuentePC(FuentePC),.instrucc(instrucc));


always
begin 
    clk <= 1'b0;
    #100;
    clk <= 1'b1;
    #100;
end
initial
    
begin
    
    reset = 1'b1;
    #20;
    reset = 1'b0;
    FuentePC=1'b0;
    
    #200;//intrucción tipo LW1
    RegDest =1'b0;
    FuenteALU = 1'b1;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b1;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b010;
    #200;//instrucción suma.
    RegDest =1'b1;
    FuenteALU = 1'b0;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b010;
    #200;//instrucción resta.
    RegDest =1'b1;
    FuenteALU = 1'b0;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b110;
    #200;//instrucción and.
    RegDest =1'b1;
    FuenteALU = 1'b0;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b000;
    #200;//instrucción or.
    RegDest =1'b1;
    FuenteALU = 1'b0;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b001;
    #200;//instrucción slt.
    RegDest =1'b1;
    FuenteALU = 1'b0;
    MemaReg = 1'b1;
    EscrReg = 1'b1;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b0;
    controlALU = 3'b111;
    #200;//instrucción SW
    RegDest =1'bx;
    FuenteALU = 1'b1;
    MemaReg = 1'bx;
    EscrReg = 1'b0;
    LeerMem = 1'b0;
    EscrMem = 1'b1;
    FuentePC = 1'b0;
    controlALU = 3'b010;
    #320;//instrucción Branch
    RegDest =1'bx;
    FuenteALU = 1'b0;
    MemaReg = 1'bx;
    EscrReg = 1'b0;
    LeerMem = 1'b0;
    EscrMem = 1'b0;
    FuentePC = 1'b1;
    controlALU = 3'b110;
    #170;
    FuentePC=1'b0;
    /*#200;//instrucción freezing
    RegDest =1'bx;
    FuenteALU = 1'bx;
    MemaReg = 1'bx;
    EscrReg = 1'bx;
    LeerMem = 1'bx;
    EscrMem = 1'bx;
    FuentePC = 1'bx;
    controlALU = 3'bxxx;*/
end

endmodule
