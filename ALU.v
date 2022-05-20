`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:16 04/18/2022 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
input clk,
           input [255:0] A,B,  // ALU 8-bit Inputs                 
           input [7:0] ALU_Sel,// ALU Selection
           output [255:0] ALU_Out, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [255:0] ALU_Result;
    wire [256:0] tmp;
    assign ALU_Out = ALU_Result; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[256]; // Carryout flag
    always @(posedge clk)
    begin
        case(ALU_Sel)
        8'h00: // Addition
           ALU_Result <= A + B ; 
        8'h01: // Subtraction
           ALU_Result <= A - B ;
        8'h02: // Multiplication
           ALU_Result <= A * B;
        8'h03: // Division
           ALU_Result <= A/B;
        8'h04: // Logical shift left
           ALU_Result <= A<<1;
         8'h05: // Logical shift right
           ALU_Result <= A>>1;
         8'h06: // Rotate left
           ALU_Result <= {A[254:0],A[255]};
			8'h07: // Rotate right
           ALU_Result <= {A[0],A[255:1]};
			8'h08: //  Logical and 
           ALU_Result <= A & B;
          8'h09: //  Logical or
           ALU_Result <= A | B;
          8'h0a: //  Logical xor 
           ALU_Result <= A ^ B;
          8'h0b: //  Logical nor
           ALU_Result <= ~(A | B);
          8'h0c: // Logical nand 
           ALU_Result <= ~(A & B);
          8'h0d: // Logical xnor
           ALU_Result <= ~(A ^ B);
          8'h0e: // Greater comparison
           ALU_Result <= (A>B)?8'd1:8'd0 ;
          8'h0f: // Equal comparison   
            ALU_Result <= (A==B)?8'd1:8'd0 ;
          default: ALU_Result <= A + B ; 
        endcase
    end

endmodule
 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:36 04/17/2022 
// Design Name: 
// Module Name:    LOGIC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LOGIC(input a,b,
output c
    );
assign c = a&b;

endmodule