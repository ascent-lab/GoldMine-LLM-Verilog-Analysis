`timescale 1ns/1ps

module simple_fsm_bench();

reg reset;
reg in;
reg clk;

wire out;

simple_fsm simple_fsm_ (
	.reset(reset),
	.in(in),
	.clk(clk),
	.out(out));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/simple_fsm/simple_fsm.vcd");
		$dumpvars(0, simple_fsm_bench.simple_fsm_);
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
		in = $random;
		#26;
	end

endmodule