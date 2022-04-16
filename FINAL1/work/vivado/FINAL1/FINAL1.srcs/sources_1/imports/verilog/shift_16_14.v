/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_16_14 (
    input [15:0] x,
    input [15:0] y,
    input [1:0] shiftAlufn,
    output reg [15:0] shiftOut
  );
  
  
  
  reg [15:0] temp;
  
  always @* begin
    
    case (shiftAlufn)
      2'h0: begin
        temp = x << y[0+3-:4];
      end
      2'h1: begin
        temp = x >> y[0+3-:4];
      end
      2'h2: begin
        temp = $signed(x) <<< y[0+3-:4];
      end
      2'h3: begin
        temp = $signed(x) >>> y[0+3-:4];
      end
      default: begin
        temp = 16'h0000;
      end
    endcase
    shiftOut = temp;
  end
endmodule
