/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparatorTester_9 (
    input clk,
    input rst,
    input start,
    output reg [1:0] status
  );
  
  
  
  wire [16-1:0] M_ad_out;
  wire [1-1:0] M_ad_z;
  wire [1-1:0] M_ad_v;
  wire [1-1:0] M_ad_n;
  reg [1-1:0] M_ad_alufn0;
  reg [16-1:0] M_ad_a;
  reg [16-1:0] M_ad_b;
  adder_19 ad (
    .alufn0(M_ad_alufn0),
    .a(M_ad_a),
    .b(M_ad_b),
    .out(M_ad_out),
    .z(M_ad_z),
    .v(M_ad_v),
    .n(M_ad_n)
  );
  
  wire [16-1:0] M_cmp_out;
  reg [1-1:0] M_cmp_alufn2;
  reg [1-1:0] M_cmp_alufn1;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_n;
  reg [1-1:0] M_cmp_v;
  comparator_18 cmp (
    .alufn2(M_cmp_alufn2),
    .alufn1(M_cmp_alufn1),
    .z(M_cmp_z),
    .n(M_cmp_n),
    .v(M_cmp_v),
    .out(M_cmp_out)
  );
  
  reg [4:0] M_testNum_d, M_testNum_q = 1'h0;
  
  
  localparam IDLE_state = 2'd0;
  localparam TEST_state = 2'd1;
  localparam PASS_state = 2'd2;
  localparam FAIL_state = 2'd3;
  
  reg [1:0] M_state_d, M_state_q = IDLE_state;
  
  always @* begin
    M_state_d = M_state_q;
    M_testNum_d = M_testNum_q;
    
    M_ad_alufn0 = 1'h1;
    M_ad_a = 1'h0;
    M_ad_b = 1'h0;
    M_cmp_alufn2 = 1'h0;
    M_cmp_alufn1 = 1'h1;
    M_cmp_z = M_ad_z;
    M_cmp_n = M_ad_n;
    M_cmp_v = M_ad_v;
    status = 1'h0;
    if (start == 1'h0) begin
      M_state_d = IDLE_state;
    end
    
    case (M_state_q)
      IDLE_state: begin
        status = 1'h0;
        if (start == 1'h1) begin
          M_state_d = TEST_state;
          M_testNum_d = 1'h0;
        end
      end
      TEST_state: begin
        
        case (M_testNum_q)
          4'h0: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'h0000;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'h1: begin
            M_ad_a = 16'h0001;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'h2: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'h3: begin
            M_ad_a = 16'h0008;
            M_ad_b = 16'h000a;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h4: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h5: begin
            M_ad_a = 16'h8000;
            M_ad_b = 16'h7fff;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h6: begin
            M_ad_a = 16'hfffe;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h7: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h0;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h8: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'h0000;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'h9: begin
            M_ad_a = 16'h0001;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'ha: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          4'hb: begin
            M_ad_a = 16'h0008;
            M_ad_b = 16'h000a;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'hc: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'hd: begin
            M_ad_a = 16'h8000;
            M_ad_b = 16'h7fff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'he: begin
            M_ad_a = 16'hfffe;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          4'hf: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h0;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          8'h10: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'h0000;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h11: begin
            M_ad_a = 16'h0001;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h12: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h13: begin
            M_ad_a = 16'h0008;
            M_ad_b = 16'h000a;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h14: begin
            M_ad_a = 16'hffff;
            M_ad_b = 16'h0001;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h15: begin
            M_ad_a = 16'h8000;
            M_ad_b = 16'h7fff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h16: begin
            M_ad_a = 16'hfffe;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h1) begin
              M_state_d = FAIL_state;
            end
          end
          8'h17: begin
            M_ad_a = 16'h0000;
            M_ad_b = 16'hffff;
            M_cmp_alufn2 = 1'h1;
            M_cmp_alufn1 = 1'h1;
            M_cmp_z = M_ad_z;
            M_cmp_n = M_ad_n;
            M_cmp_v = M_ad_v;
            if (M_cmp_out[0+0-:1] != 1'h0) begin
              M_state_d = FAIL_state;
            end
          end
          8'h18: begin
            M_state_d = PASS_state;
          end
        endcase
        M_testNum_d = M_testNum_q + 1'h1;
      end
      PASS_state: begin
        status = 1'h1;
      end
      FAIL_state: begin
        status = 2'h2;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_testNum_q <= 1'h0;
    end else begin
      M_testNum_q <= M_testNum_d;
    end
  end
  
endmodule