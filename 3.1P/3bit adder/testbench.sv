`timescale 1ns/1ns

module threebittb();
reg [2:0] a = 3'd0;
reg [2:0] b = 3'd0;

wire [2:0]sum;
wire cout;

threebit thrbit(sum[0], sum[1], sum[2], cout, a[0], a[1], a[2], b[0], b[1], b[2]);

initial begin
$dumpfile("dump.vcd");
$dumpvars(1,threebittb);
a=2;
b=2;
#10
$display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,cout);
a=3;
b=7;
#10
$display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,cout);
a=5;
b=1;
#10
$display("a = %d, b = %d, sum = %d, cout = %d",a,b,sum,cout);
$finish;
end
endmodule