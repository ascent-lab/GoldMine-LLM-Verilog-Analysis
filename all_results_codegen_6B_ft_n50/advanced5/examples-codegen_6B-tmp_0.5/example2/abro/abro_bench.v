`timescale 1ns/1ps

module abro_bench();

reg reset;
reg a;
reg b;
reg clk;

wire z;

abro abro_ (
	.reset(reset),
	.a(a),
	.b(b),
	.clk(clk),
	.z(z));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/abro/abro.vcd");
		$dumpvars(0, abro_bench.abro_);
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
		a = $random;
		b = $random;
		#26;
	end

endmodule