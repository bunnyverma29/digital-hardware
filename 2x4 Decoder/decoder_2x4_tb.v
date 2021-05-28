`include "decoder_2x4.v"
module test ();
reg [1:0] Sel;
reg I;
wire [3:0] out;

integer i,j;
decoder_2x4 dut (Sel,out,I);   

    initial begin
        $dumpfile("decoder.vcd");
        $dumpvars(1);
        for (i=0;i<4;i=i+1) begin
             for (j=0;j<2;j=j+1) begin
                 #5;
                 Sel=i;
                 I=j;
             end
            
        end

    end
endmodule