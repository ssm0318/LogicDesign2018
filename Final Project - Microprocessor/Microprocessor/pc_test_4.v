`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:30:20 06/20/2017
// Design Name:   pc
// Module Name:   /csehome/ld111/microP/pc_test_4.v
// Project Name:  microP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_test_4;

	// Inputs
	reg [7:0] NextI;
	reg clk;
	reg Reset;

	// Outputs
	wire [7:0] NextO;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.NextI(NextI), 
		.clk(clk), 
		.Reset(Reset), 
		.NextO(NextO)
	);

	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		Reset = 1;
		NextI = 8'b0101_0101;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Reset = 0;
		NextI = 8'b0101_0101;
		#100;
		
		NextI = 8'b0101_1111;
		#100;
		
	//	Reset = 0;
		NextI = 8'b1111_0101;
		#100;
		
		//Reset = 0;
		NextI = 8'b1111_1111;

	end      
endmodule


