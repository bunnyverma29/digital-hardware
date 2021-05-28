`include "priority_logic.v"
`include "encoder.v"
module priority (i0,i1,i2,i3,i4,i5,i6,i7,y0,y1,y2,y);
input i0,i1,i2,i3,i4,i5,i6,i7;
output y0,y1,y2,y;   
wire h0,h1,h2,h3,h4,h5,h6,h7,I;

priority_logic dut (i0, i1,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ,h0,h1,h2,h3,h4,h5,h6,h7,I);
encoder dut1 (h0,h1,h2,h3,h4,h5,h6,h7,y0,y1,y2,y);

endmodule

