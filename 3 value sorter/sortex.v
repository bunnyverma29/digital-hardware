module sortex(  SORT,A,B,C,W,X,Y);
    
    input [7:0] A,B,C;
    input SORT;
    output reg  [7:0] W,X,Y;
always @(SORT) begin
    if (A>B) begin
        if(A>C) begin
            Y=A;
            if (B>C) begin
                X=B;
                W=C;
                end
            else begin
                X=C;
                W=B;
                end
                end
        else   begin
                Y=C;
            if (B>A) begin
                     X=B;
                     W=A;
                    end
            else begin
                X=A;
                W=B;
            end  
            end
          end
    else begin
        if(B>C) begin
            Y=B;
            if (B>C) begin
                X=A;
                W=C;
                end
            else begin
                X=C;
                W=A;
                end
                end
        else   begin
                Y=C;
            if (A>B) begin
                     X=A;
                     W=B;
                    end
            else begin
                X=B;
                W=A;
            end  
            end
          end
    end

endmodule