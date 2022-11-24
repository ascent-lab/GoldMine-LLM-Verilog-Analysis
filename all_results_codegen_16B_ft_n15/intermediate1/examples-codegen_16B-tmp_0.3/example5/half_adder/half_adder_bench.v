`timescale 1ns/1ps

module half_adder_bench();

reg a;
reg b;

wire sum;
wire cout;

half_adder half_adder_ (
	.a(a),
	.b(b),
	.sum(sum),
	.cout(cout));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/half_adder/half_adder.vcd");
		$dumpvars(0, half_adder_bench.half_adder_);
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