`timescale 1ns/1ps

module mux_bench();

reg [4:0] a;
reg [4:0] b;
reg sel;

wire [4:0] out;

mux mux_ (
	.a(a),
	.b(b),
	.sel(sel),
	.out(out));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/mux/mux.vcd");
		$dumpvars(0, mux_bench.mux_);
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
		sel = $random;
		#26;
	end

endmodule