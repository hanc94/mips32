`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2021 08:59:19 AM
// Design Name: 
// Module Name: controlALU
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


module controlALU(input [5:0]campoFuncion,input [1:0]ALUOp,output reg [2:0]controlDeALU);
    
    
    always @(*)
    begin
    
    case (campoFuncion)
    
        8'b100000:controlDeALU=3'b010;//suma
        8'b100010:controlDeALU=3'b110;//resta
        8'b100100:controlDeALU=3'b000;//and
        8'b100101:controlDeALU=3'b001;//or
        8'b101010:controlDeALU=3'b111;//slt
        default controlDeALU=3'b010;
        
        endcase
        
    if(ALUOp==2'b01)controlDeALU=3'b110;
    end

endmodule
