`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2026 22:32:53
// Design Name: 
// Module Name: half_adder_tb
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

module half_adder_tb;
    reg A, B;
    wire Sum, Carry;
    HALF_ADDER uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );
    initial begin
        $monitor("A=%b  B=%b | Sum=%b  Carry=%b", A, B, Sum, Carry);
    end
    initial begin
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        $finish;
    end
endmodule
