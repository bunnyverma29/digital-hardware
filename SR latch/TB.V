`include "design.v"
module test ;

 latch dur1 (S,E,R,Q,Qbar );

reg S,R,E;
wire Q,Qbar;  
integer i;
assign valid = (Q !==Qbar);

initial begin
    E= 1;
    $monitor($time, "   S = %b R = %b  Q = %b Qbar = %b valid = %b",S,R,Q,Qbar, valid);
    repeat (10) begin     
    {S,R}={$random}%4;

    #10;
end
end

endmodule