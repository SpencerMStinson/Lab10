`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 08:09:16 PM
// Design Name: 
// Module Name: show2c_testbench
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


module show2c_testbench();

  reg [7:0] Din_t;
  reg [15:0] Dout_t;
  wire sign_t;


show2c dut( 
.Din(Din_t), 
.Dout(Dout_t),
.sign(sign_t) );


initial begin 
Din_t = 8'b11111111; #10;
Din_t = 8'b01111111; #10;
Din_t = 8'b11110111; #10;
Din_t = 8'b01110111; #10;
end 



endmodule
