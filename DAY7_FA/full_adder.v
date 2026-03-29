`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 23:39:21
// Design Name: 
// Module Name: full_adder
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


module half_adder(
input A,B,
output SUM1,C1);
assign SUM1=A^B;
assign C1=A & B;
endmodule
module full_adder(
input A,B,Cin,
output SUM,Cout);
wire SUM1,C1,C2;
half_adder HA1(A,B,SUM1,C1);
half_adder HA2(SUM1,Cin,SUM,C2);
assign Cout=C1 | C2;
endmodule