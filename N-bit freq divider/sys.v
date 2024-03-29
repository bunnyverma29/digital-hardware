module sys (clk,rst,clkout);
  input clk,rst;
  output reg clkout;
  reg out;
  reg [6:0] count;
  parameter N = 18;
  wire k,clkin;
  not #2.5 (k,clk);
  xor (clkin,k,clk);


  
  always @(posedge clkin) begin
    if(rst==1)begin count<=1; clkout<=0; end
    else if(!rst && count< N)
    count<=count+1;
    if (count==N) count<=1;
    end
  
  
  always @(count) begin
    if(count==N) out<=1;
    else out<=0;
   /*   if (0<N<2) out<=count[0];
    else if (2<=N<4) out <=count[1];
    else if (4<=N<8) out <=count[2];
    else if (8<=N<16) out <=count[3];
    else if (16<=N<32) out <=count[4];
    else if (32<=N<64) out <=count[5];
    else if (64<=N<128) out <=count[6];
*/
  	end


  always @(posedge out) begin
    clkout= #2~clkout;
  end

  
  
endmodule