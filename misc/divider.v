`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:36 03/11/2021 
// Design Name: 
// Module Name:    divider 
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
module Divider(
    input clk,
    output reg clk_div
    );

	reg [31:0] count;
	always @ (posedge(clk))
	begin
		if (count >= (10 *1024 * 1024) -1 )
		begin
			count <= 32'b0;
			clk_div <= ~clk_div;
		end
		else
		begin
			count <= count + 1;
			clk_div <= clk_div;
		end
	end
endmodule
