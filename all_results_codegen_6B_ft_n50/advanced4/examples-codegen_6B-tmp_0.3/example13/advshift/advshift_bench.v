`timescale 1ns/1ps

module advshift_bench();

reg load;
reg ena;
reg [1:0] amount;
reg [63:0] data;
reg clk;

wire [63:0] q;

advshift advshift_ (
	.load(load),
	.ena(ena),
	.amount(amount),
	.data(data),
	.clk(clk),
	.q(q));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/advshift/advshift.vcd");
		$dumpvars(0, advshift_bench.advshift_);
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
		load = $random;
		ena = $random;
		amount = $random;
		data = $random;
		#26;
	end

endmodule