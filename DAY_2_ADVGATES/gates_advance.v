`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2026 22:27:10
// Design Name: 
// Module Name: gates_advance
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


module gates_advance(
input A,B,
output NAND_OUT,NOR_OUT,XOR_OUT
    );
    assign NAND_OUT= ~(A&B);
    assign NOR_OUT=~(A|B);
    assign XOR_OUT= A^B;
endmodule
