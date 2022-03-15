/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_21 (
    input [3:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out
  );
  
  
  
  wire [(5'h10+0)-1:0] M_mux_out;
  reg [(5'h10+0)-1:0] M_mux_a;
  reg [(5'h10+0)-1:0] M_mux_b;
  
  genvar GEN_mux0;
  generate
  for (GEN_mux0=0;GEN_mux0<5'h10;GEN_mux0=GEN_mux0+1) begin: mux_gen_0
    mux2_23 mux (
      .alufn(alufn),
      .a(M_mux_a[GEN_mux0*(1)+(1)-1-:(1)]),
      .b(M_mux_b[GEN_mux0*(1)+(1)-1-:(1)]),
      .out(M_mux_out[GEN_mux0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_mux_a = a;
    M_mux_b = b;
    out = M_mux_out;
  end
endmodule