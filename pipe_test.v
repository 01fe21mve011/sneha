`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:37 04/21/2022 
// Design Name: 
// Module Name:    pipe_test 
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
module pipe_test;
parameter N=10;
wire [N-1:0] F;
reg [N-1:0] A,B,C,D;
reg clk;
pipe_ex MYPIPE (F,A,B,C,D,clk);
initial clk=0;
always#10 clk=~clk;
initial
begin
#5 A=10;B=12;C=6;D=3;
#20 A=10;B=10;C=5;D=3;
#20 A=20;B=11;C=1;D=4;
#20 A=15;B=10;C=8;D=2;
#20 A=8;B=15;C=5;D=0;
#20 A=10;B=20;C=5;D=3;
#20 A=10;B=10;C=30;D=1;
#20 A=30;B=1;C=2;D=4;
end
initial
begin
$dumpfile("pipe1.void");
$dumpvars(0,pipe1_test);
$monitor("time:%d,F=%d",$time,F);
#300 $finish;
end
endmodule
    
