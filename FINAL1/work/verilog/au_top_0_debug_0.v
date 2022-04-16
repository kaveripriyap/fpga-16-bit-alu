/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    input player_button1,
    input player_button2,
    input reset_button,
    input usb_rx,
    output reg usb_tx,
    output reg green_led,
    output reg red_led,
    output reg [6:0] seven_seg_p1_seg,
    output reg [1:0] seven_seg_p1_sel,
    output reg [6:0] seven_seg_p2_seg,
    output reg [1:0] seven_seg_p2_sel,
    output reg [6:0] seven_seg_rounds_seg,
    output reg [1:0] seven_seg_rounds_sel
  );
  
  
  
  reg rst;
  
  reg pb1;
  
  reg pb2;
  
  reg pr;
  
  reg [15:0] inputAlu_a;
  
  reg [15:0] inputAlu_b;
  
  reg split_boolean;
  
  reg [15:0] split_choice;
  
  reg [15:0] isp1;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_p_button1_out;
  reg [1-1:0] M_p_button1_in;
  button_conditioner_2 p_button1 (
    .clk(clk),
    .in(M_p_button1_in),
    .out(M_p_button1_out)
  );
  wire [1-1:0] M_p_button2_out;
  reg [1-1:0] M_p_button2_in;
  button_conditioner_2 p_button2 (
    .clk(clk),
    .in(M_p_button2_in),
    .out(M_p_button2_out)
  );
  wire [1-1:0] M_r_button_out;
  reg [1-1:0] M_r_button_in;
  button_conditioner_2 r_button (
    .clk(clk),
    .in(M_r_button_in),
    .out(M_r_button_out)
  );
  wire [7-1:0] M_split_display_seg_tolight;
  wire [2-1:0] M_split_display_dig_tolight;
  reg [16-1:0] M_split_display_split_chosen;
  seven_seg_split_out_3 split_display (
    .clk(clk),
    .rst(rst),
    .split_chosen(M_split_display_split_chosen),
    .seg_tolight(M_split_display_seg_tolight),
    .dig_tolight(M_split_display_dig_tolight)
  );
  wire [1-1:0] M_control_unit_we;
  wire [4-1:0] M_control_unit_ra;
  wire [4-1:0] M_control_unit_rb;
  wire [4-1:0] M_control_unit_rc;
  wire [2-1:0] M_control_unit_asel;
  wire [3-1:0] M_control_unit_bsel;
  wire [2-1:0] M_control_unit_wdsel;
  wire [6-1:0] M_control_unit_alufn;
  wire [1-1:0] M_control_unit_green_led;
  wire [1-1:0] M_control_unit_red_led;
  wire [1-1:0] M_control_unit_split_yes;
  wire [16-1:0] M_control_unit_debug__;
  reg [1-1:0] M_control_unit_btn1;
  reg [1-1:0] M_control_unit_btn2;
  reg [1-1:0] M_control_unit_btn_reset;
  reg [16-1:0] M_control_unit_p1_sequence;
  reg [16-1:0] M_control_unit_p2_sequence;
  reg [16-1:0] M_control_unit_sequenceCount;
  reg [16-1:0] M_control_unit_isP1;
  reg [16-1:0] M_control_unit_tempvar1;
  reg [16-1:0] M_control_unit_tempvar2;
  game_cu_1_debug_4 control_unit (
    .clk(clk),
    .rst(rst),
    .btn1(M_control_unit_btn1),
    .btn2(M_control_unit_btn2),
    .btn_reset(M_control_unit_btn_reset),
    .p1_sequence(M_control_unit_p1_sequence),
    .p2_sequence(M_control_unit_p2_sequence),
    .sequenceCount(M_control_unit_sequenceCount),
    .isP1(M_control_unit_isP1),
    .tempvar1(M_control_unit_tempvar1),
    .tempvar2(M_control_unit_tempvar2),
    .we(M_control_unit_we),
    .ra(M_control_unit_ra),
    .rb(M_control_unit_rb),
    .rc(M_control_unit_rc),
    .asel(M_control_unit_asel),
    .bsel(M_control_unit_bsel),
    .wdsel(M_control_unit_wdsel),
    .alufn(M_control_unit_alufn),
    .green_led(M_control_unit_green_led),
    .red_led(M_control_unit_red_led),
    .split_yes(M_control_unit_split_yes),
    .debug__(M_control_unit_debug__)
  );
  wire [16-1:0] M_register_file_out_a;
  wire [16-1:0] M_register_file_out_b;
  wire [16-1:0] M_register_file_literal;
  wire [16-1:0] M_register_file_isP1;
  wire [16-1:0] M_register_file_sequenceCount;
  wire [16-1:0] M_register_file_p1Sequence;
  wire [16-1:0] M_register_file_p2Sequence;
  wire [16-1:0] M_register_file_tempvar1;
  wire [16-1:0] M_register_file_tempvar2;
  wire [16-1:0] M_register_file_addValue;
  wire [16-1:0] M_register_file_loopVar;
  reg [4-1:0] M_register_file_rc;
  reg [1-1:0] M_register_file_we;
  reg [16-1:0] M_register_file_data;
  reg [4-1:0] M_register_file_ra;
  reg [4-1:0] M_register_file_rb;
  game_miniRegfile_5 register_file (
    .clk(clk),
    .rst(rst),
    .rc(M_register_file_rc),
    .we(M_register_file_we),
    .data(M_register_file_data),
    .ra(M_register_file_ra),
    .rb(M_register_file_rb),
    .out_a(M_register_file_out_a),
    .out_b(M_register_file_out_b),
    .literal(M_register_file_literal),
    .isP1(M_register_file_isP1),
    .sequenceCount(M_register_file_sequenceCount),
    .p1Sequence(M_register_file_p1Sequence),
    .p2Sequence(M_register_file_p2Sequence),
    .tempvar1(M_register_file_tempvar1),
    .tempvar2(M_register_file_tempvar2),
    .addValue(M_register_file_addValue),
    .loopVar(M_register_file_loopVar)
  );
  
  wire [16-1:0] M_game_alu_out;
  wire [1-1:0] M_game_alu_z;
  wire [1-1:0] M_game_alu_v;
  wire [1-1:0] M_game_alu_n;
  reg [16-1:0] M_game_alu_x;
  reg [16-1:0] M_game_alu_y;
  reg [6-1:0] M_game_alu_alufn;
  alu16_6 game_alu (
    .x(M_game_alu_x),
    .y(M_game_alu_y),
    .alufn(M_game_alu_alufn),
    .out(M_game_alu_out),
    .z(M_game_alu_z),
    .v(M_game_alu_v),
    .n(M_game_alu_n)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    green_led = 8'h00;
    red_led = 8'h00;
    M_p_button1_in = player_button1;
    pb1 = M_p_button1_out;
    M_p_button2_in = player_button2;
    pb2 = M_p_button2_out;
    M_r_button_in = reset_button;
    pr = M_r_button_out;
    M_control_unit_btn1 = pb1;
    M_control_unit_btn2 = pb2;
    M_control_unit_btn_reset = pr;
    M_register_file_ra = M_control_unit_ra;
    M_register_file_rb = M_control_unit_rb;
    M_register_file_rc = M_control_unit_rc;
    M_register_file_we = M_control_unit_we;
    M_control_unit_sequenceCount = M_register_file_sequenceCount;
    M_control_unit_p1_sequence = M_register_file_p1Sequence;
    M_control_unit_p2_sequence = M_register_file_p2Sequence;
    
    case (M_control_unit_asel)
      2'h0: begin
        inputAlu_a = M_register_file_out_a;
      end
      2'h1: begin
        inputAlu_a = 16'h0000;
      end
      default: begin
        inputAlu_a = 16'h0000;
      end
    endcase
    
    case (M_control_unit_bsel)
      3'h0: begin
        inputAlu_b = M_register_file_out_b;
      end
      3'h1: begin
        inputAlu_b = 16'h0000;
      end
      3'h2: begin
        inputAlu_b = 16'h0001;
      end
      3'h3: begin
        inputAlu_b = 16'h0005;
      end
      3'h4: begin
        inputAlu_b = 16'h000f;
      end
      3'h5: begin
        inputAlu_b = 16'h0012;
      end
      default: begin
        inputAlu_b = 16'h0000;
      end
    endcase
    M_game_alu_x = inputAlu_a;
    M_game_alu_y = inputAlu_b;
    M_game_alu_alufn = M_control_unit_alufn;
    
    case (M_control_unit_wdsel)
      2'h0: begin
        M_register_file_data = M_game_alu_out;
      end
      2'h1: begin
        M_register_file_data = 16'hffff;
      end
      2'h2: begin
        M_register_file_data = 16'h000f;
      end
      2'h3: begin
        M_register_file_data = 16'h0000;
      end
      default: begin
        M_register_file_data = M_game_alu_out;
      end
    endcase
    seven_seg_p1_sel = 1'h0;
    seven_seg_p1_seg = 1'h0;
    seven_seg_p2_sel = 1'h0;
    seven_seg_p2_seg = 1'h0;
    seven_seg_rounds_sel = 1'h0;
    seven_seg_rounds_seg = 1'h0;
    split_boolean = M_control_unit_split_yes;
    split_choice = M_register_file_literal;
    isp1 = M_register_file_isP1;
    M_control_unit_isP1 = M_register_file_isP1;
    M_control_unit_tempvar1 = M_register_file_tempvar1;
    M_control_unit_tempvar2 = M_register_file_tempvar2;
    M_split_display_split_chosen = 16'hffff;
    if (split_boolean) begin
      M_split_display_split_chosen = split_choice;
      if (isp1 == 1'h1) begin
        seven_seg_p1_seg = M_split_display_seg_tolight;
        seven_seg_p1_sel = M_split_display_dig_tolight;
      end else begin
        if (isp1 == 1'h0) begin
          seven_seg_p2_seg = M_split_display_seg_tolight;
          seven_seg_p2_sel = M_split_display_dig_tolight;
        end
      end
    end
    green_led = M_control_unit_green_led;
    red_led = M_control_unit_red_led;
  end
  
  reg [17-1:0] M_debugger_data;
  au_debugger_7 debugger (
    .clk(clk),
    .data(M_debugger_data)
  );
  
  always @* begin
    M_debugger_data = {clk, M_control_unit_debug__};
  end
endmodule
