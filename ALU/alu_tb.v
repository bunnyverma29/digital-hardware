`include "alu.v"
module alu_tb ();
reg oe;
reg [3:0] command_in;
reg [7:0] a_in,b_in;
wire [15:0] d_out;
integer  i=0;

alu dut (oe,command_in,a_in,b_in,d_out );


initial begin
    $dumpfile("file.vcd");

    $dumpvars(1);

    #5;
    oe=1;
    a_in=8'd135;
    b_in=8'd201;
    for (i=0;i<16;i=i+1) begin
        command_in=i;
        $display("sel is %b and output is %d",command_in,d_out);
        #10;
    end

end
    
endmodule