module counter (
    rst , clk , up_down_bar,count
);
input rst, clk,up_down_bar;
output reg [3:0] count;

always @(posedge clk) begin
    if(rst) count <= 4'b0000;
    else count<= (up_down_bar) ?  count+1'b1 : count-1'b1;
end
endmodule