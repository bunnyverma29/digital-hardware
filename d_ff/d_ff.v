module d_ff ( din,clk,reset,q,qbar );
    
    input din,reset,clk;
    output reg q;
    output qbar;

    assign qbar=!q;

    always @(posedge clk) begin
        if (!reset) 
        q<=din;
        else q<=1'b0;
    end
endmodule