`include "decoder_3x8.v"

module test ();


reg [2:0] in;
reg enable;
wire [7:0] out;
integer i;

decoder dut1 ( in,out,enable);


initial 
begin
    $dumpvars(0);
    $dumpfile("file1.vcd");
    for (i=0;i<16;i=i+1)
     begin
    #5;
    {in,enable}=i;
    end
end

endmodule