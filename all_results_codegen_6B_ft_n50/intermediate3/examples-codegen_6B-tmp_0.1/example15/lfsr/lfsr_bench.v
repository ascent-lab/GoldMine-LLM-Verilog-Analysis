`timescale 1ns/1ps

module lfsr_bench();

reg reset;
reg clk;

wire [4:0] q;

lfsr lfsr_ (
	.reset(reset),
	.clk(clk),
	.q(q));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/lfsr/lfsr.vcd");
		$dumpvars(0, lfsr_bench.lfsr_);
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