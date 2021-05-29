`include "design.v"
module tb;

reg t,reset,clk;
wire q, qbar;

t_ff dut (t,clk,reset,q,qbar );

always  #5 clk =~clk;

initial begin
    $dumpfile("fi.vcd");
    $dumpvars(0);
end

initial begin
    clk=0;
    reset=1;
    #12;
    reset=0;
    t=1;
    #10;
    reset=1;
    #10;
    reset=0;
    #15;
    $finish;
end

    
endmodule