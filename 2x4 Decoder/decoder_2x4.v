module decoder_2x4 ( sel,y,i );

input [1:0] sel;
output reg [3:0] y;
input i;

always @ (sel,i) begin
    if (sel==2'b00) y= {i,3'b000};
    else if (sel==2'b01) y= {1'b0,i,2'b00};
    else if (sel==2'b10) y= {2'b00,i,1'b0};
    else if (sel==2'b11) y= {3'b000,i};
 end

    
endmodule