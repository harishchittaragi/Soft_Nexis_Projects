**1) Full Adder – Verilog Project**
This is my first basic project as part of my learning journey with Soft Nexis Technologies.
The project implements a 1-bit Full Adder using Verilog HDL and simulates it to verify the functionality.

**Project Details**
Tool Used: Xilinx Vivado
Language: Verilog
Simulation only.
**Description:**
Implements a 1-bit Full Adder with three inputs (A, B, Cin) and two outputs (Sum, Cout).
Designed, synthesized, and simulated using Vivado to validate correct logic operation.
Useful as a fundamental building block for larger arithmetic circuits.

**Learning Outcome**
Understanding of combinational logic design.
Hands-on experience with writing and simulating Verilog code in Vivado.
Familiarity with testbench creation for verifying design functionality.


**2) 4-Bit Ripple Carry Adder (RCA) Overview**

This repository contains a Verilog implementation of a **4-bit Ripple Carry Adder (RCA)**.  
The design uses four 1-bit full adders connected in series to perform binary addition of two 4-bit numbers, along with a carry-in (`Cin`) and a carry-out (`Cout`).

### Key Features
- Modular design with a separate **full adder module**.
- Handles 4-bit binary addition with proper carry propagation.
- Includes a testbench that simulates different inputs, such as `5 + 3`, `9 + 7`, and overflow cases.

### Example Simulation Output
A=5 B=3 Cin=0 => Sum=8 Cout=0
A=9 B=7 Cin=0 => Sum=0 Cout=1 (overflow)
A=8 B=8 Cin=1 => Sum=1 Cout=1
A=15 B=1 Cin=0 => Sum=0 Cout=1 (overflow)
A=0 B=0 Cin=1 => Sum=1 Cout=0
A=6 B=9 Cin=0 => Sum=15 Cout=0

This implementation demonstrates **binary addition with carry propagation**, handling both normal and overflow cases.
