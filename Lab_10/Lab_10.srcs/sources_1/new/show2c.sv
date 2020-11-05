`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 01:23:50 PM
// Design Name: 
// Module Name: show2c
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


module show2c(
    input [7:0] Din,
    output reg [15:0] Dout,
    output sign
    );
    reg [7:0] addout;
     assign addout = ~Din + 8'b00000001;
    
    always @*
    
    if (Din[7]) 
        Dout <= {8'hFF, addout};
    else 
        Dout <= {8'b00, Din};
    
    assign sign = Din[7];
    
endmodule
