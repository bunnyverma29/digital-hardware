module counter (
    rst , clk , data, load,count
);
input rst, clk,load;
input [3:0] data;
output reg [3:0] count;

always @(posedge clk) begin
    if(rst) count <= 4'b0000;
    else if (load) count <= data;
    else count<= (count >=11) ? 4'b0000 : count+1'b1;
end

endmodule