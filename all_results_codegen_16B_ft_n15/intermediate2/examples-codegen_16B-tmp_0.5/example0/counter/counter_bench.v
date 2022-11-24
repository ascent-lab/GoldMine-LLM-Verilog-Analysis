`timescale 1ns/1ps

module counter_bench();

reg reset;
reg clk;

wire [3:0] q;

counter counter_ (
	.reset(reset),
	.clk(clk),
	.q(q));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/counter/counter.vcd");
		$dumpvars(0, counter_bench.counter_);
		clk = 1;
		rst = 0;
		#26;
		rst = 1;
		#500000 $finish;
	end

	always begin
		#25 clk = ~clk;
	end

	always begin
		#24;
		reset = $random;
		#26;
	end

endmodule