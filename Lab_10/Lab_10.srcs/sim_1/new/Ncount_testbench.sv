`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:21:07 PM
// Design Name: 
// Module Name: Ncount_testbench
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


module Ncount_testbench();

reg clk_t, rst_t;
wire [1:0] msb_t;

Ncount #(.N(4)) dut(
    .clk(clk_t),
    .rst(rst_t),
    .msb(msb_t) );

always begin 
    clk_t = ~clk_t; #5;
    end 
    
 initial begin 
    clk_t = 0; rst_t = 0; #7; 
    rst_t = 1; #3; 
    rst_t = 0; #3;
    end

endmodule
