`include "d_ff.v"
module test  ();
    
    reg din,reset,clk;
    wire q,qbar;
    integer i;
d_ff dut1 (din,clk,reset,q,qbar);

initial forever begin
    clk= ~clk;
    #5;
end

initial begin
    $dumpvars(0);
    $dumpfile("suuu.vcd");
end

initial begin
    clk=0;
    reset=0;
    din=0;
    #1;
    reset=1;
    #3;
    reset=0;
    #1;
    din=1;
    #3;
    din=0;
    #5;
    din=1;
    #15;
    $finish;
end
endmodule