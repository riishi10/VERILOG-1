`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 18:28:34
// Design Name: 
// Module Name: RippleCarryAdder_tb
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


module RippleCarryAdder_tb;
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]SUM;
wire Cout;
RippleCarryAdder uut(.A(A),.B(B),.Cin(Cin),.SUM(SUM),.Cout(Cout));
initial 
$monitor("A=%d  B=%d  Cin=%b | Sum=%d  Cout=%b ",A, B, Cin, SUM, Cout);
initial begin
Cin = 0;
        A=4'd0;  B=4'd0;  #10;   // 0+0 = 0
        A=4'd5;  B=4'd3;  #10;   // 5+3 = 8
        A=4'd7;  B=4'd8;  #10;   // 7+8 = 15
        A=4'd9;  B=4'd6;  #10;   // 9+6 = 15
        A=4'd15; B=4'd1;  #10;   // 15+1 = 16 → Sum=0, Cout=1 (overflow)
        A=4'd15; B=4'd15; #10;   // 15+15 = 30 → Sum=14, Cout=1
        Cin = 1;
        A=4'd5;  B=4'd3;  #10;   // 5+3+1 = 9
        A=4'd15; B=4'd15; #10;   // 15+15+1 = 31 → Sum=15, Cout=1
        $finish;
        end
endmodule
