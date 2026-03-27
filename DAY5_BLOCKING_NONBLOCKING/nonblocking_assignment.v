`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 23:09:22
// Design Name: 
// Module Name: nonblocking_assignment
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


module nonblocking_example;
    reg a, b, c;
    initial begin
        a = 0;
        b = 1;
        c = 0;
        #10;
        a <= b;   // scheduled
        b <= c;   // scheduled
        c <= a;   // scheduled
        #10;
        $display("Non-Blocking: a=%b b=%b c=%b", a, b, c);
    end
endmodule
