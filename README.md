# Verilog-8bit-Processor

This project implements a simple 8-bit processor using Verilog HDL.  
The processor was designed and simulated using Xilinx Vivado.

## Project Overview
The processor executes basic arithmetic and logic operations using an ALU.  
It includes a program counter, instruction memory, register file, and control unit.

## Modules

### Program Counter (pc.v)
Generates the address of the next instruction.

### Instruction Memory (insrt_memo.v)
Stores instructions that the processor executes.

### Control Unit (control_unit.v)
Decodes the instruction opcode and generates control signals.

### Register File (register.v)
Stores data and provides operands to the ALU.

### ALU (alu.v)
Performs arithmetic and logic operations like:
- ADD
- SUB
- AND
- OR
- XOR
- SHIFT

### Processor (processor.v)
Top-level module connecting all components.

### Testbench (processor_tb.v)
Used to simulate the processor functionality.

## Instruction Format

[ opcode (3 bits) | rs1 (3 bits) | rs2 (2 bits) ]

## Tools Used
- Verilog HDL
- Xilinx Vivado
- GitHub

## Author
Vedika Morchhale
