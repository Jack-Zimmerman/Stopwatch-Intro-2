module digital_clock
	# (parameter FREQUENCY = 10_000_000)
	(
		input clk, 
		output logic[8:0] seconds
	);

	logic [24:0] cycles;

	always @ (posedge clk) begin
		if (cycles == FREQUENCY) begin
			seconds <= seconds + 1;		
			cycles <= 0;
		end
		
		cycles <= cycles + 1;
	end 

endmodule
