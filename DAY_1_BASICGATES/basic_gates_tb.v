`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 22:52:51
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb;

    // declare inputs as reg, outputs as wire
    reg A, B;
    wire AND_out, OR_out, NOT_out;

    // connect testbench to your design
    basic_gates uut (
        .A(A),
        .B(B),
        .AND_out(AND_out),
        .OR_out(OR_out),
        .NOT_out(NOT_out)
    );

    initial begin
        $display("A  B | AND OR NOT");
        $display("------------------");

        A = 0; B = 0; #10;
        $display("%b  %b |  %b   %b   %b", A, B, AND_out, OR_out, NOT_out);

        A = 0; B = 1; #10;
        $display("%b  %b |  %b   %b   %b", A, B, AND_out, OR_out, NOT_out);

        A = 1; B = 0; #10;
        $display("%b  %b |  %b   %b   %b", A, B, AND_out, OR_out, NOT_out);

        A = 1; B = 1; #10;
        $display("%b  %b |  %b   %b   %b", A, B, AND_out, OR_out, NOT_out);

        $finish;
    end

endmodule
