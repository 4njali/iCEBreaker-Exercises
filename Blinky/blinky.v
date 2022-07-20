module top
// iCEBreaker clock speed is 12MHz
  #(parameter clk_freq_hz = 12000000)
   (input  CLK,
    output reg LEDG_N = 1'b0,
    );

// Determine how many bits the count register needs to be
   reg [$clog2(clk_freq_hz)-1:0] count = 0;

// Blink LED every 1sec
   always @(posedge CLK) begin
      count <= count + 1; //increment counter

      // For every 12M count, toggle LED, reset count
      if (count == clk_freq_hz - 1) begin
	    LEDG_N <= !LEDG_N;
	    count <= 0;
      end
   end

endmodule 