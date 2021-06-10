
module mux4x1 (i0,i1,i2,i3,sel,Y);
input i0,i1,i2,i3;
input [1:0] sel;
output Y;
wire[3:0] y;
decoder_2x4  dut ( sel,y );
bufif1 A0 (Y,i0,y[0]);
bufif1 A1 (Y,i1,y[1]);
bufif1 A2 (Y,i2,y[2]);
bufif1 A3 (Y,i3,y[3]);
endmodule





module decoder_2x4 ( Sel,y1 );
input [1:0] Sel;
output [3:0] y1;
assign y1= 1<<Sel;   
endmodule
