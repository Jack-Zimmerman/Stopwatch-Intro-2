module tb_timer();
	localparam FREQUENCY = 10_000_000;
	localparam MAX_SECONDS = 10;

	logic clk;
	logic [8:0] seconds;

	timer DUT(
		.clk,
		.seconds
	);

	task advance_clock();
		clk = 1'b1;
		#(1)
		clk = 1'b0;
	endtask

	initial begin
		for (int i = 0; i < 10_000_000; i++) begin 
			//advance clock
			advance_clock();
		end

		$display("%d", seconds_count);
	end
endmodule
