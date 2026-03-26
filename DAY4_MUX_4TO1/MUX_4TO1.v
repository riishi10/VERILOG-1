`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 23:33:29
// Design Name: 
// Module Name: MUX_4TO1
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


module MUX_4TO1(
input I0,I1,I2,I3,S0,S1,
output Y
    );
    assign Y=S1?(S0?I3:I2):(S0?I1:I0); 
endmodule
