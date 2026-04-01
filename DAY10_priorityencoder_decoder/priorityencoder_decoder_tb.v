`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 23:39:15
// Design Name: 
// Module Name: priorityencoder_decoder_tb
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


module encoder_decoder_tb;
    reg  [3:0] D;
    wire [1:0] Y_enc;
    wire       Valid;
    reg  [1:0] A;
    wire [3:0] Y_dec;
    priority_encoder_4to2 ENC (
        .D(D),
        .Y(Y_enc),
        .Valid(Valid)
    );
    decoder_2to4 DEC (
        .A(A),
        .Y(Y_dec)
    );
    initial
        $monitor("ENC: D=%b | Y=%b Valid=%b  ||  DEC: A=%b | Y=%b",
                  D, Y_enc, Valid, A, Y_dec);
    initial begin
        D = 4'b0000; #10;  // no input
        D = 4'b0001; #10;  // D0
        D = 4'b0010; #10;  // D1
        D = 4'b0100; #10;  // D2
        D = 4'b1000; #10;  // D3
        D = 4'b1010; #10;  // D3 wins
        D = 4'b0110; #10;  // D2 wins
        D = 4'b0011; #10;  // D1 wins
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;
        $finish;
    end
endmodule
