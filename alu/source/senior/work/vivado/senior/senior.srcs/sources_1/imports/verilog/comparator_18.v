/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparator_18 (
    input alufn2,
    input alufn1,
    input z,
    input n,
    input v,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out[1+14-:15] = 1'h0;
    
    case (alufn2)
      1'h0: begin
        
        case (alufn1)
          1'h1: begin
            out[0+0-:1] = z;
          end
          default: begin
            out[0+0-:1] = 1'h0;
          end
        endcase
      end
      1'h1: begin
        
        case (alufn1)
          1'h0: begin
            out[0+0-:1] = n ^ v;
          end
          1'h1: begin
            out[0+0-:1] = z | (n ^ v);
          end
        endcase
      end
      default: begin
        out[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule
