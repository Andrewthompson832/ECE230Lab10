module tff(
    input T,
    input Clock,
    output reg Q,
    output notQ
    );
   
   initial begin
        Q <= 0;
   end
    
   always @(posedge Clock) begin
        if (T)
            Q <= ~Q;
   end
   
   assign notQ = ~Q;
   
endmodule