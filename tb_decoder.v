`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:43 04/11/2022 
// Design Name: 
// Module Name:    tb_decoder 
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
module tb_decoder;
    reg [2:0] Data_in;
    wire [7:0] Data_out;
	
    D38_tb f1(
        .Data_in(Data_in), 
        .Data_out(Data_out)
    );

    initial begin
        Data_in = 3'b000;     #100;
        Data_in = 3'b001;     #100;
        Data_in = 3'b010;     #100;
        Data_in = 3'b011;     #100;
        Data_in = 3'b100;     #100;
        Data_in = 3'b101;     #100;
        Data_in = 3'b110;     #100;
        Data_in = 3'b111;     #100;
    end
endmodule

