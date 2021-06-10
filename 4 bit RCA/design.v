`timescale 1ns / 1ps
module fa(
    input a,
    input b,
    input c,
    output sum,
    output carry);
	 wire w2,w3;
	 xor x1(sum,a,b,c);
	 and a1(w1,a,b);
	 and a2(w2,b,c);
	 and a3(w3,a,c);
	 or o1(carry,w1,w2,w3);
endmodule

module fa_4bit (a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0] sum;
wire [3:0] c;
output cout;


fa f0 (a[0],b[0],cin,sum[0],c[0]);
fa f1 (a[1],b[1],c[0],sum[1],c[1]);
fa f2 (a[2],b[2],c[1],sum[2],c[2]);
fa f3 (a[3],b[3],c[2],sum[3],cout);

endmodule
