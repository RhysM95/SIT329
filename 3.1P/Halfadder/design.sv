`timescale 1ns/1ns

module halfadder
	(
		input a,
		input b,
		output sum,
		output cout
	);

  xor(sum, a, b);
  and(cout, a, b);  

endmodule // half_adder