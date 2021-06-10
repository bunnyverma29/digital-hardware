module latch (S,E,R,Q,Qbar );

input S,R,E;
output Q,Qbar;
    

wire t3,t4;
nand a1 (Q,t3,Qbar);
nand a2 (Qbar,t4,Q);
nand a3 (t3,S,E);
nand a4 (t4,R,E);

endmodule