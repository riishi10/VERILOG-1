`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 22:31:23
// Design Name: 
// Module Name: HALF_ADDER
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


module HALF_ADDER(
    input A,
    input B,
    output Sum,
    output Carry
);
    assign Sum   = A ^ B;   // XOR
    assign Carry = A & B;   // AND
endmodule
