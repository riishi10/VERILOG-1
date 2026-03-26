`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 23:46:50
// Design Name: 
// Module Name: MUX_4TO1_tb
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


module MUX_4TO1_tb;
reg I0,I1,I2,I3,S0,S1;
wire Y;
MUX_4TO1 uut (
.I0(I0),
.I1(I1),
.I2(I2),
.I3(I3),
.S0(S0),
.S1(S1),
.Y(Y)
);

initial begin
        $display("S1 S0 | Y");

        I0=0; I1=1; I2=0; I3=1;

        S1=0; S0=0; #10;
        $display("%b  %b | %b", S1,S0,Y);

        S1=0; S0=1; #10;
        $display("%b  %b | %b", S1,S0,Y);

        S1=1; S0=0; #10;
        $display("%b  %b | %b", S1,S0,Y);

        S1=1; S0=1; #10;
        $display("%b  %b | %b", S1,S0,Y);

        $finish;
    end
endmodule
