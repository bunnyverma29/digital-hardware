`include "sys.v"
module tst;
  reg clk,rst;
 
  sys dut  (clk,rst,clkout);
  
  initial begin
    clk=0;
    rst=0; 
    #5;
    rst=1;
    #5;
    rst =0;  
  end
  
  always begin
    clk=#5 ~clk;
  end
  
    
  initial begin 
    $dumpfile("file.vcd");
    $dumpvars(1);
    #400;
    $finish; 
  end
  
endmodule