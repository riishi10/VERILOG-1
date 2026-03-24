`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2026 22:32:55
// Design Name: 
// Module Name: tb_gates_advance
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


module tb_gates_advance;
    reg A, B;
    wire NAND_OUT, NOR_OUT, XOR_OUT;
    gates_advance uut (
        .A(A),
        .B(B),
        .NAND_OUT(NAND_OUT),
        .NOR_OUT(NOR_OUT),
        .XOR_OUT(XOR_OUT)   
    );
    initial begin
        $display("A B | NAND NOR XOR");
        $display("----------------------");
        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b    %b", A, B, NAND_OUT, NOR_OUT, XOR_OUT);
        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b    %b", A, B, NAND_OUT, NOR_OUT, XOR_OUT);
        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b    %b", A, B, NAND_OUT, NOR_OUT, XOR_OUT);
        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b    %b", A, B, NAND_OUT, NOR_OUT, XOR_OUT);
        $finish;
    end
endmodule
