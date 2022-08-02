module fulladdertb();
reg a,b,cin;
wire sum, cout;
fulladder fa(sum,cout, a,b, cin);
initial begin
$dumpfile("dump.vcd");
$dumpvars(1,fulladdertb);
a=0;
b=0;
cin=0;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum,cout);
a=0;
b=0;
cin=1;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum,cout);
a=0;
b=1;
cin=0;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
a=0;
b=1;
cin=1;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
a=1;
b=0;
cin=0;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
a=1;
b=0;
cin=1;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
a=1;
b=1;
cin=0;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
a=1;
b=1;
cin=1;
#10
$display("a = %d, b = %d, cin = %d, sum = %d, cout = %d",a,b,cin,sum, cout);
$finish;
end
endmodule