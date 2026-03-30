`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 18:16:38
// Design Name: 
// Module Name: RippleCarryAdder
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
module full_adder(
input A,B,Cin,
output SUM,Cout
);
assign SUM=A^B^Cin;
assign Cout=(A&B)|((A^B)&Cin);
endmodule

module RippleCarryAdder(
input [3:0]A,[3:0]B,Cin,
output [3:0]SUM,Cout
    );
    wire C1,C2,C3;
    full_adder FA1(.A(A[0]),.B(B[0]),.Cin(Cin),.SUM(SUM[0]),.Cout(C1));
    full_adder FA2(.A(A[1]),.B(B[1]),.Cin(C1),.SUM(SUM[1]),.Cout(C2));
    full_adder FA3(.A(A[2]),.B(B[2]),.Cin(C2),.SUM(SUM[2]),.Cout(C3));
    full_adder FA4(.A(A[3]),.B(B[3]),.Cin(C3),.SUM(SUM[3]),.Cout(Cout));
endmodule
