# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./regfile.sv"
vlog "./D_FF.sv"
vlog "./D_FF_enabled.sv"
vlog "./register.sv"
vlog "./two_to_four_decoder.sv"
vlog "./three_to_eight_decoder.sv"
vlog "./mux2to1.sv"
vlog "./mux4to1.sv"
vlog "./mux16to1.sv"
vlog "./mux32to1.sv"
vlog "./mux64times32to1.sv"
vlog "./*.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work regdemo

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do regstim_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
