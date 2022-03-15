/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_20 (
    input [15:0] a,
    input [3:0] b,
    input alufn0,
    input alufn1,
    output reg [15:0] out
  );
  
  
  
  integer unsignedb;
  
  always @* begin
    unsignedb = $unsigned(b);
    out = 1'h0;
    
    case (alufn0)
      1'h0: begin
        
        case (alufn1)
          1'h0: begin
            out = a << unsignedb;
          end
        endcase
      end
      1'h1: begin
        
        case (alufn1)
          1'h0: begin
            out = a >> unsignedb;
          end
          1'h1: begin
            out = $signed(a) >>> unsignedb;
          end
        endcase
      end
    endcase
  end
endmodule
