`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 23:37:09
// Design Name: 
// Module Name: priorityencoder_decoder
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


// ── 4:2 Priority Encoder ───────────────────────────────
// Highest priority = D3 > D2 > D1 > D0
module priority_encoder_4to2(
    input  [3:0] D,
    output reg [1:0] Y,
    output reg       Valid
);

    always @(*) begin
        casez(D)   // casez allows 'z' or '?' as don't care
            4'b1???: begin Y = 2'b11; Valid = 1; end // D3
            4'b01??: begin Y = 2'b10; Valid = 1; end // D2
            4'b001?: begin Y = 2'b01; Valid = 1; end // D1
            4'b0001: begin Y = 2'b00; Valid = 1; end // D0
            default: begin Y = 2'b00; Valid = 0; end // no input active
        endcase
    end

endmodule


// ── 2:4 Decoder ───────────────────────────────
module decoder_2to4(
    input  [1:0] A,
    output reg [3:0] Y
);

    always @(*) begin
        case(A)
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
            default: Y = 4'b0000;
        endcase
    end

endmodule
