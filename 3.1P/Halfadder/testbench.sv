`timescale 1ns/1ns

module halfaddertb();

//Inputs
reg a,b;

//Outputs
wire sum, cout;

//Instance of helfadder model
halfadder ha(
  .sum(sum),
  .cout(cout),
  .a(a),
  .b(b)
);


initial begin

$dumpfile("dump.vcd");
$dumpvars(1,halfaddertb);
a=0;
b=0;
#10
 $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum, cout);
a=0;
b=1;
#10
 $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum, cout);
a=1;
b=0;
#10
 $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum, cout);
a=1;
b=1;
#10
 $display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum, cout);
$finish;

end
endmodule