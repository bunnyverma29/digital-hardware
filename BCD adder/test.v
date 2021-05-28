`include "design.v"


module test ();

reg [ 3:0] x, y;
reg cin;
wire [ 3:0] sum;
wire cout;
integer i;
bcdadder dut1  (x, y, cin, sum, cout) ;

initial begin
    for (i=0;i<512;i=i+1) begin
        {x,y,cin}=i;
        #5;
    end
end

initial begin
       $monitor("x= %d, y= %d,cin= %d ,sum= %d, cout = %d",x,y,cin,sum,cout);
end

endmodule