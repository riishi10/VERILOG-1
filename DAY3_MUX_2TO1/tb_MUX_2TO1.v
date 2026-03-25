`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 22:28:09
// Design Name: 
// Module Name: tb_MUX_2TO1
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


module tb_MUX_2TO1;
reg S0,I1,I2;
wire Y;
MUX_2TO1 uut(
.I1(I1),
.I2(I2),
.S0(S0),
.Y(Y)
);
initial begin
$display("I1 I2 S0 | Y");
$display("-------------");
I1=0; I2=0; S0=0; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=0; I2=1; S0=0; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=1; I2=0; S0=0; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=1; I2=1; S0=0; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=0; I2=0; S0=1; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=0; I2=1; S0=1; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=1; I2=0; S0=1; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

I1=1; I2=1; S0=1; #10;
$display("%b %b %b | %b",I1,I2,S0,Y);

$finish;
end

endmodule

