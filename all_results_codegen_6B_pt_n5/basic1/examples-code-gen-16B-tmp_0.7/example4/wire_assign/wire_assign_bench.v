`timescale 1ns/1ps

module wire_assign_bench();

reg in;

wire out;

wire_assign wire_assign_ (
	.in(in),
	.out(out));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/wire_assign/wire_assign.vcd");
		$dumpvars(0, wire_assign_bench.wire_assign_);
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
		in = $random;
		#26;
	end

endmodule