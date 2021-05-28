module  whole_full_adder_design(
    input A,B,Cin,output S,Cout
);
    
    wire w1,w2,w3;
    half_adder dut1 (A,B,w1,w2);
    half_adder dut2 (w1,Cin,S,w3);
    or or1 (Cout,w2,w3);
    

endmodule




module half_adder(
  input  a,b, output s,c
);
    
assign s=a^b;
assign c=a&b;


endmodule