`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:31 05/21/2022 
// Design Name: 
// Module Name:    fcfs 
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
module arbiter(
input Rqst0,Rqst1,Rqst2,Rqst3,
input clk, resetn,
output reg Grant0,Grant1,Grant2,Grant3
    );
reg[2:0] curg,nexg;
parameter one = 3'b000,two = 3'b001,three = 3'b010,four = 3'b011,burst = 3'b100;
always @(posedge clk)
begin
if(~resetn)
curg<=one;
else
curg<=nexg;
end


endmodule
