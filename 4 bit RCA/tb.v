`include "design.v"


module test;

reg [3:0]a,b;
reg cin;
wire [3:0] sum;
wire c;
integer i;

fa_4bit  dur(a,b,cin,sum,c);


initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
    for ( i=0 ;i<512 ;i=1+i ) 
    begin
        {a,b,cin}=i;
        #5;
        if ( {c,sum}==a+b+cin)
            $display("true");
        else
            $display("False");
        
    end
end
    
endmodule