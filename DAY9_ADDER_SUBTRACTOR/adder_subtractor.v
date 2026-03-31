`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 23:35:38
// Design Name: 
// Module Name: adder_subtractor
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


module half_adder(
    input  A, B,
    output Sum, Carry
);
    assign Sum   = A ^ B;
    assign Carry = A & B;
endmodule


module full_adder(
    input  A, B, Cin,
    output Sum, Cout
);
    wire Sum1, C1, C2;
    half_adder HA1 (.A(A),    .B(B),   .Sum(Sum1), .Carry(C1));
    half_adder HA2 (.A(Sum1), .B(Cin), .Sum(Sum),  .Carry(C2));
    assign Cout = C1 | C2;
endmodule


module ripple_carry_adder(
    input  [3:0] A, B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);
    wire C1, C2, C3;
    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(C1));
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(C1),  .Sum(Sum[1]), .Cout(C2));
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(C2),  .Sum(Sum[2]), .Cout(C3));
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(C3),  .Sum(Sum[3]), .Cout(Cout));
endmodule

module adder_subtractor(
    input  [3:0] A, B,
    input        Mode,   // 0 = Add, 1 = Subtract
    output [3:0] Result,
    output       Cout);
    
    wire [3:0] B_modified;
    assign B_modified = B ^ {4{Mode}};  
    ripple_carry_adder RCA (
        .A(A),
        .B(B_modified),
        .Cin(Mode),
        .Sum(Result),
        .Cout(Cout)
    );
endmodule
