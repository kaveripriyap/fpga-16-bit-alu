set projDir "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/vivado"
set projName "cowcri"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/au_top_0.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/reset_conditioner_1.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/multi_seven_seg_2.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/alu_16_3.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/counter_4.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/seven_seg_5.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/decoder_6.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/arith_16_7.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/bool_16_8.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/shift_16_9.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/verilog/comp_16_10.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/constraint/io.xdc" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/cowcri/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1