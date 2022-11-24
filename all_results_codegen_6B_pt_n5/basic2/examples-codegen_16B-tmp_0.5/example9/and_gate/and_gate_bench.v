`timescale 1ns/1ps

module and_gate_bench();

reg a;
reg b;

wire out;

and_gate and_gate_ (
	.a(a),
	.b(b),
	.out(out));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/and_gate/and_gate.vcd");
		$dumpvars(0, and_gate_bench.and_gate_);
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
		a = $random;
		b = $random;
		#26;
	end

endmodule