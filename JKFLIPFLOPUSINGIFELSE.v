module JKFLIPFLOP(q, qb,j,k,clock,reset);
    input j,k,clock,reset;
    output reg q, qb;
	 
always @ (posedge (clock))

    begin 
        if (!reset)
            begin
               q <= q;
               qb <=qb;
            end   
        
	    else if(j!=k)
		    begin
		    q<=j;
		    qb<=qb;
		    end
	    else if(j==1 && k==1)
		    begin
		    q<= ~q;
		    qb <= ~qb;
		    end
    end
end
endmodule
	
