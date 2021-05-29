module t_ff (t,clk,reset,q,qbar );

input t,reset,clk;
output reg q;
output qbar;

assign qbar=~q;

always @(posedge clk) begin 
    if(reset) 
    q<=0;
    else if (t)
    q<=~qbar;
end
    
endmodule