/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mux2_23 (
    input [3:0] alufn,
    input a,
    input b,
    output reg out
  );
  
  
  
  always @* begin
    out = alufn[($unsigned({b, a}))*1+0-:1];
  end
endmodule