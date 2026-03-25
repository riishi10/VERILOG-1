`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 22:19:25
// Design Name: 
// Module Name: MUX_2TO1
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


module MUX_2TO1(
input I1,I2,S0,
output Y
    );
    assign Y=S0?I2:I1;
    // assign Y = (~S0 & I1) | (S0 & I2); 
endmodule
