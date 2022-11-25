`timescale 1ns/1ps

module ram_bench();

reg we;
reg [7:0] data;
reg [5:0] addr;
reg clk;

wire [7:0] q;

ram ram_ (
	.we(we),
	.data(data),
	.addr(addr),
	.clk(clk),
	.q(q));

	initial begin
		$dumpfile("/home/debjitjdv/Work/GoldMine/RunTime/goldmine.out/ram/ram.vcd");
		$dumpvars(0, ram_bench.ram_);
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
		we = $random;
		data = $random;
		addr = $random;
		#26;
	end

endmodule