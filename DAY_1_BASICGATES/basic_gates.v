`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 22:36:12
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
    input A,
    input B,
    output AND_out,
    output OR_out,
    output NOT_out
);

assign AND_out = A & B;
assign OR_out  = A | B;
assign NOT_out = ~A;

endmodule

