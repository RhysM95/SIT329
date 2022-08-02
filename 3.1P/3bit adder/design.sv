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

`timescale 1ns/1ns

module fulladder(sum, cout, a, b, cin);
	
	input a,b,cin;
	output sum, cout;

	assign sum = a^b^cin; 
	assign cout = a&&b || a&&cin || b&&cin;

endmodule // fulladder

module threebit(output sum0, sum1, sum2, cout, input a0, a1, a2, b0, b1, b2);
  
  wire c1,c2;
  halfadder half(a0,b0,sum0, c1);
  fulladder full1(sum1,c2,a1,b1,c1); 
  fulladder full2(sum2,cout,a2,b2,c2);

endmodule // fulladder
