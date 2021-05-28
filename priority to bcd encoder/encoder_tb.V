`include "encoder.v"
module encoder_tb ();

reg h0,h1,h2,h3,h4,h5,h6,h7;
wire y0,y1,y2,y;
reg [8:0] i;

encoder dttt (h0,h1,h2,h3,h4,h5,h6,h7,y0,y1,y2,y);

initial begin
    for(i=1;i<255;i=i<<1) begin
        {h7,h6,h5,h4,h3,h2,h1,h0}=i;
        #10;
        $display("input is %b and output is %b %b %b validity - %b",i,y0,y1,y2,y);
    end
end
    
endmodule