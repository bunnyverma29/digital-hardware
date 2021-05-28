`include "design.v"
module design_tb ();
reg i0,i1,i2,i3,i4,i5,i6,i7;
wire y0,y1,y2,y;
integer i;
priority dut2 (i0,i1,i2,i3,i4,i5,i6,i7,y0,y1,y2,y);

initial begin
    $dumpfile("file.vcd");
    $dumpvars(0);
    for(i=0;i<255;i=i+1) begin
        {i0,i1,i2,i3,i4,i5,i6,i7}=i;
        #5;
        $display("input = %0b ,INVALID = %b, BCD output = %b",i,y,{y0,y1,y2});
    end
end
endmodule