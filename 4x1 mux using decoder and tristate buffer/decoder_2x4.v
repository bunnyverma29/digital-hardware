module decoder_2x4 ( sel,y,enable );

input [1:0] sel;
output reg [3:0] y;
input enable;

always @ (sel,enable) begin
    if (sel==2'b00) y= {enable,3'b000};
    else if (sel==2'b01) y= {1'b0,enable,2'b00};
    else if (sel==2'b10) y= {2'b00,enable,1'b0};
    else if (sel==2'b11) y= {3'b000,enable};
 end

    
endmodule