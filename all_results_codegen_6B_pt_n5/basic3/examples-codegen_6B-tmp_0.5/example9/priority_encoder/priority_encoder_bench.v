`timescale 1ns/1ps

module priority_encoder_bench();

reg [2:0] in;

wire [1:0] pos;

priority_encoder priority_encoder_ (
	.in(in),
	.pos(pos));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/priority_encoder/priority_encoder.vcd");
		$dumpvars(0, priority_encoder_bench.priority_encoder_);
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