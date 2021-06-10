`include "up_down_counter.v"
module test ();

reg rst, clk,up_down_bar;
wire [3:0] count;

counter dut (
    rst , clk , up_down_bar,count
);

always #2 clk= !clk;

initial begin
    $dumpfile("file1.vcd");
    $dumpvars(1);
    clk=0;
    rst =1;
    
    #5;
    #12 up_down_bar=1;
    rst =0;
    #150;
    #12 up_down_bar=0;

    #150;
    $finish;
    


end


    
endmodule