`timescale 1ns/1ps

module count_slow_bench();

reg reset;
reg slowena;
reg clk;

wire [3:0] q;

count_slow count_slow_ (
	.reset(reset),
	.slowena(slowena),
	.clk(clk),
	.q(q));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/count_slow/count_slow.vcd");
		$dumpvars(0, count_slow_bench.count_slow_);
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
		slowena = $random;
		#26;
	end

endmodule