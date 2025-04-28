## 32_by_64_ARM_register_file
## Project Overview
This project implements a 32x64-bit register file for a pipelined ARM microprocessor. The register file is a critical component of the processor's datapath, built using structural Verilog with gate-level logic and D flip-flops. The implementation adheres to the ARM architecture, where register 31 is hardwired to output zero.

## Features
- 32 Registers, 64-bit Wide: Stores 32 registers, each 64 bits, constructed from positive edge-triggered D flip-flops.
- Dual Read Ports: Supports simultaneous reading from two registers (Read Register 1 and Read Register 2) with outputs on Read Data 1 and Read Data 2 buses.
- Single Write Port: Writes data to a selected register (Write Register) when RegWrite is true at the rising clock edge.
- Hardwired Register 31: Register 31 always outputs zero, regardless of write operations.
- Structural Design: Uses explicit gates (AND, OR, NAND, NOR, XOR, etc.) with a maximum of 4 inputs per gate and 50ps delay.
- No RTL in Datapath: Implements logic using structural Verilog, with generate statements for hierarchy and no behavioral constructs (except for D flip-flops).

## Implementation detail
The register file is composed of the following components:
- Registers: Each register is an array of 64 D flip-flops with an enable input.
- 5:32 Decoder: Selects the target register for write operations by enabling the corresponding register's write enable signal. The decoder's most significant output is disconnected since register 31 is hardwired to zero.
- Two 64x32:1 Multiplexors: Select the register outputs for Read Data 1 and Read Data 2. Each is built from 64 instances of a 32:1 multiplexor.
- Clock and Write Enable: The clock is a clean, periodic signal, while the write enable is glitch-prone but only triggers writes on the positive clock edge.

The design uses generate statements to manage repetitive structures efficiently, avoiding excessive manual coding. All state-holding elements are built from the D_FF module, and no gates are placed on the clock signal.

## Setup and Cloning
1. Clone the Repository:
   ```bash
   git clone <repository-url>
   ```

2. Open in Quartus II:
   - Create a new project in Quartus II
   - Add all .sv files into the project
   - Compile the design

3. Simulate in Modelsim:
   - Launch modelsim and navigate it to the project directory(make sure the runlab.do file is within the project directory as well)
   - Run the simulation using:
     ```bash
     do runlab.do
     ```
   - Change the runlab.do file if you added any extra project files into the project and also if you want to change the testbench that you're running
   - The wave.do file configures the waveform viewer to display all inputs, outputs, and register contents
  
4. Modify Testbench:
   - Update regstim.sv to include additional test cases to verify functionality (e.g., simultaneous reads, writes, and register 31 behavior)

