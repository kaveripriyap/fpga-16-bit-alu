set projDir "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/vivado"
set projName "FINAL1"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/au_top_0.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/reset_conditioner_1.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/button_conditioner_2.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/seven_seg_split_out_3.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/game_cu_4.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/game_miniRegfile_5.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/multi_seven_seg_6.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/alu16_7.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/pipeline_8.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/counter_9.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/seven_seg_10.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/decoder_11.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/arith_16_12.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/bool_16_13.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/shift_16_14.v" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/verilog/comp_16_15.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/constraint/io.xdc" "E:/Program\ Files/library/components/au.xdc" "C:/Users/fauza/Documents/GitHub/fpga-16-bit-alu/FINAL1/work/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 12
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1
