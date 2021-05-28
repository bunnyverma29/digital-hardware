module decoder (
    in,out,enable
);
    input [2:0] in;
    input enable;
    output  reg [7:0] out;


always @(in,enable) begin
    
    out= enable << in;

end

endmodule