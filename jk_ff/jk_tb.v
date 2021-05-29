`include "jk_ff.v"

module test ();

reg clk,reset,j,k;
wire q, qbar;  
integer i=0;
jk_ff sut  (clk,reset,j,k,q,qbar);


initial begin
    clk=0;
    reset=0;
    #3;
    reset=1;
    #10;
    repeat (8) begin
       {j,k,reset} =i;
       #10;
       i=i+1; 
    end
    #10;
    $finish;
end

initial begin
    forever #5 clk=!clk;
end

initial begin
    $dumpfile("fi.vcd");
    $dumpvars(0);
end

endmodule