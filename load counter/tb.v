//`include "design.v"
`include "lodable_mod_12.v"

module tb ();
reg rst, clk,load;
reg [3:0] data;
wire [3:0] count;
  wire [3:0] k;


counter  dut( rst , clk , data, load,count);
always  #1 clk=!clk;
    

initial begin
    waveform;
    initialize;
    #50;
    loadit(1);
    #40;
    loadit(5);
    #90;
    $finish;

end

task loadit(input  k);
    begin
        load=1;
        data = k;
        #2;
        load =0; 
        data = 4'bx; 
    end
endtask

task initialize;
    begin
        clk =0;
        load=0;
        rst =1;
        #2;
        rst =0;
      end
endtask

task waveform;
begin
    $dumpfile("file.vcd");
    $dumpvars(1);
end
endtask 
endmodule