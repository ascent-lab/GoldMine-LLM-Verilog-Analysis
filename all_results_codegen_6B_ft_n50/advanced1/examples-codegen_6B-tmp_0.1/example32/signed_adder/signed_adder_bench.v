`timescale 1ns/1ps

module signed_adder_bench();

reg [7:0] a;
reg [7:0] b;

wire [7:0] s;
wire overflow;

signed_adder signed_adder_ (
	.a(a),
	.b(b),
	.s(s),
	.overflow(overflow));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/signed_adder/signed_adder.vcd");
		$dumpvars(0, signed_adder_bench.signed_adder_);
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