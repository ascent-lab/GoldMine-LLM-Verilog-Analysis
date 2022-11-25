`timescale 1ns/1ps

module left_rotate_bench();

reg reset;
reg load;
reg [2:0] amount;
reg [7:0] data;
reg clk;

wire [7:0] out;

left_rotate left_rotate_ (
	.reset(reset),
	.load(load),
	.amount(amount),
	.data(data),
	.clk(clk),
	.out(out));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/left_rotate/left_rotate.vcd");
		$dumpvars(0, left_rotate_bench.left_rotate_);
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
		load = $random;
		amount = $random;
		data = $random;
		#26;
	end

endmodule