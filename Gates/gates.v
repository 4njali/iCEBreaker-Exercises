// Cause yosys to throw an error when we implicitly declare nets
`default_nettype none

// Project entry point
module top (
	input CLK,
	input  BTN_N, BTN1, BTN2, BTN3,
	output LED1, LED2, LED3, LED4, LED5,
);

	// Combinatorial logic using 2 inputs, Button 1 and Button 2
	assign LED1 = !BTN1;                // Not operator example
	assign LED2 = BTN1 && BTN2;         // And operator example
	assign LED3 = !(BTN1 && BTN2);      // Nand operator example
	assign LED4 = BTN1 || BTN2;         // Or operator example
	assign LED5 = BTN1 ^ BTN2; 			// Xor example

endmodule //top
