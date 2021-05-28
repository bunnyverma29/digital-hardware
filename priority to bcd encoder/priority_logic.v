module priority_logic (i0, i1,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ,h0,h1,h2,h3,h4,h5,h6,h7,I);

input i0, i1,i2 ,i3 ,i4 ,i5 ,i6 ,i7 ;
output h0,h1,h2,h3,h4,h5,h6,h7,I;

assign h0 = i0;
assign h1 = ~i0 & i1;
assign h2 = ~i0 & ~i1 &i2;
assign h3 = ~i0 & ~i1 & ~i2 & i3;
assign h4 = ~i0 & ~i1 & ~i2 & ~i3 & i4;
assign h5 = ~i0 & ~i1 & ~i2 & ~i3 & ~i4 &i5;
assign h6 = ~i0 & ~i1 & ~i2 & ~i3 & ~i4 &~i5 &i6;
assign h7 = ~i0 & ~i1 & ~i2 & ~i3 & ~i4 &~i5 & ~i6 & i7 ;
assign I = ~i0 & ~i1 & ~i2 & ~i3 & ~i4 &~i5 & ~i6 & ~i7 ;

endmodule