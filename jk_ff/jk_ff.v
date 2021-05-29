module jk_ff (clk,reset,j,k,q,qbar);

input clk,reset,j,k;
output reg q;
output qbar;

assign qbar =~q;

always @(posedge clk) begin
    if(reset) q<=1'b0;
    else
        case ({j,k})
        2'b01  : q<=1'b0;
        2'b10  : q<=1'b1;
        2'b11  : q<= ~q;
        endcase   
end
    
endmodule