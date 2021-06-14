module clk_buffer (in, out);

input in;
output out;

bufif1(out,in,1'b1);
    
endmodule