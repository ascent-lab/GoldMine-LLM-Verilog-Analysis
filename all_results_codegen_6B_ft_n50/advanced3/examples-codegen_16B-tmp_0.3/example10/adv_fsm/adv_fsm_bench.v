`timescale 1ns/1ps

module adv_fsm_bench();

reg reset;
reg x;
reg clk;

wire z;

adv_fsm adv_fsm_ (
	.reset(reset),
	.x(x),
	.clk(clk),
	.z(z));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/adv_fsm/adv_fsm.vcd");
		$dumpvars(0, adv_fsm_bench.adv_fsm_);
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
		x = $random;
		#26;
	end

endmodule