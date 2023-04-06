`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2021 12:40:38 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

    reg [31:0]a,b;
    reg [2:0]ControlAlu;
    wire [31:0]y;
    wire zero;

    ALU UUT(.a(a),.b(b),.ControlALU(ControlAlu),.y(y),.zero(zero));
    
    initial
    begin
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b010;
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b000;
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b001;
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b100;
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b110;
    #25;
    a='b01;
    b='b10;
    ControlAlu = 3'b111;
    end
endmodule
