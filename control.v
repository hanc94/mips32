`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2021 08:31:36 PM
// Design Name: 
// Module Name: control
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


module control(input [5:0]instru,output RegDest,FuenteALU,memaReg,EscrReg,LeerMem,EscrMem,SaltoCond,ALUOp1,ALUOp0);
    reg[8:0]out;
    
    assign RegDest = out[8];
    assign FuenteALU = out[7];
    assign memaReg = out[6];
    assign EscrReg = out[5];
    assign LeerMem = out[4];
    assign EscrMem = out[3];
    assign SaltoCond = out[2];
    assign ALUOp1 = out[1];
    assign ALUOp0 = out[0];

    always @(*)
    begin
    
        case (instru)
        
            6'b000000:out=9'b100100010;
            6'b100011:out=9'b011110000;
            6'b101011:out=9'bx1x001000;
            6'b000100:out=9'bx0x000101;
            default:  out=9'bxxxxxxxxx;
        endcase
        
    end
endmodule
