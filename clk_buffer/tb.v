`include "design.v"
module test ();



reg in;
wire out;
reg clk;
real t1,t2,f;
clk_buffer due (in, out);



always #25 in=!in;

initial begin
@(posedge out) t1=$realtime;
@(posedge out) t2=$realtime;
f=1000000000/(t2-t1);
//t2=1/t2;
$display("freq is %d ",f);
end

initial begin
    $dumpfile("g.vcd");
    $dumpvars(1);
    in=0;
    #150;
    $finish;
end




endmodule