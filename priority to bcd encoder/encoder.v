module encoder (h0,h1,h2,h3,h4,h5,h6,h7,y0,y1,y2,y);

input h0,h1,h2,h3,h4,h5,h6,h7;
output y0,y1,y2,y;

assign {y2,y1,y0}= (h0==1'b1)?3'd0:3'dz;
assign {y2,y1,y0}= (h1==1'b1)?3'd1:3'dz;
assign {y2,y1,y0}= (h2==1'b1)?3'd2:3'dz;
assign {y2,y1,y0}= (h3==1'b1)?3'd3:3'dz;
assign {y2,y1,y0}= (h4==1'b1)?3'd4:3'dz;
assign {y2,y1,y0}= (h5==1'b1)?3'd5:3'dz;
assign {y2,y1,y0}= (h6==1'b1)?3'd6:3'dz;
assign {y2,y1,y0}= (h7==1'b1)?3'd7:3'dz;
assign y = (h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7)? 0:1;

endmodule