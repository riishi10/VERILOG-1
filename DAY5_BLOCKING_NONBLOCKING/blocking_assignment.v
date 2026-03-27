`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2026 23:06:00
// Design Name: 
// Module Name: blocking_assignment
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


module blocking_example;
    reg a, b, c;
    initial begin
        a = 0;
        b = 1;
        c = 0;
        #10;
        a = b;   
        b = c;   
        c = a;   
        #10;
        $display("Blocking: a=%b b=%b c=%b", a, b, c);
    end
endmodule
