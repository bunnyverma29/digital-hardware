`include "sortex.v"
module test;

reg [7:0] A,B,C;
reg SORT;
wire [7:0] W,X,Y;

sortex dut(  SORT,A,B,C,W,X,Y);

initial begin
    $dumpfile("ff.vcd");
    $dumpvars(0);
    SORT =0;
    #10;
    A= 10;
    B=15;
    C=7;
    SORT =1;
    #10;

    SORT =0;
    #10;
    A= 5;
    B=15;
    C=71;
    SORT =1;
    #10;


    SORT =0;
    #10;
    A= 0;
    B=1;
    C=50;
    SORT =1;
    #10;
    $finish;
end

endmodule