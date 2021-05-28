module alu (oe,command_in,a_in,b_in,d_out );

input oe;
input [3:0] command_in;
input [7:0] a_in,b_in;
output [15:0] d_out;

assign d_out =  (oe & (command_in==4'b0000)) ? a_in + b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b0001)) ? a_in + 8'b1 : 16'bz;
assign d_out =  (oe & (command_in==4'b0010)) ? a_in - b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b0011)) ? a_in - 8'b1 : 16'bz;

assign d_out =  (oe & (command_in==4'b0100)) ? a_in * b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b0101)) ? a_in / 8'd2 : 16'bz;
assign d_out =  (oe & (command_in==4'b0110)) ? a_in <<b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b0111)) ? a_in>> b_in : 16'bz;

assign d_out =  (oe & (command_in==4'b1000)) ? ~a_in       : 16'bz;
assign d_out =  (oe & (command_in==4'b1001)) ? a_in & b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b1010)) ? a_in | b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b1011)) ?~(a_in&b_in) : 16'bz;

assign d_out =  (oe & (command_in==4'b1100)) ?~(a_in|b_in) : 16'bz;
assign d_out =  (oe & (command_in==4'b1101)) ? a_in ^ b_in : 16'bz;
assign d_out =  (oe & (command_in==4'b1110)) ?~(a_in|b_in) : 16'bz;
assign d_out =  (oe & (command_in==4'b1111)) ? a_in        : 16'bz;


endmodule