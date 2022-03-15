set projDir "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/vivado"
set projName "senior"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/au_top_0.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/alu_tester_1.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/auto_tester_2.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/button_conditioner_3.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/edge_detector_4.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/multi_seven_seg_5.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/reset_conditioner_6.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/alu_7.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/adderTester_8.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/comparatorTester_9.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/booleanTester_10.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/shifterTester_11.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/multiplierTester_12.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/errorTester_13.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/pipeline_14.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/counter_15.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/seven_seg_16.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/decoder_17.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/comparator_18.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/adder_19.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/shifter_20.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/boolean_21.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/multiplier_22.v" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/verilog/mux2_23.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/constraint/alchitry.xdc" "C:/Users/shubh/Documents/GitHub/fpga-16-bit-alu/alu/source/senior/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
