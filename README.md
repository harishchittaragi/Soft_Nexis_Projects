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




**3) Full Adder – RTL to Gate-Level Synthesis (Vivado)**
** Introduction**
This project demonstrates the process of designing and synthesizing a 1-bit Full Adder in Verilog using Xilinx Vivado. The main goal is to understand how an RTL description is transformed into a gate-level netlist and mapped to FPGA device primitives.

📂 **Files in This Repository**
**Full_adder.v** → RTL design in Verilog
**synth_script.tcl** → Vivado TCL script to automate synthesis
**synthesized_netlist.v** → Gate-level netlist generated after synthesis
**utilization_report.txt** → Resource usage report
**timing_report.txt** → Timing summary report
**docs/** → Screenshots of schematic, reports, and waveforms

⚙️ **How to Run**
1.Open Vivado in TCL mode or GUI.
2.Run the provided synthesis script:  source synth_script.tcl
3.After synthesis completes:
    View the schematic (Tools → Netlist Viewers → Schematic).
    Check synthesized_netlist.v for mapped LUTs/IBUFs/OBUFs.
    Open utilization_report.txt and timing_report.txt for analysis.

**Results**
** Schematic:** Post-synthesis schematic shows the full adder mapped to FPGA LUT3 cells and buffers.
 ** Netlist Snippet:** Example from synthesized_netlist.v:   
             LUT3 #(.INIT(8'h96)) Sum_OBUF_inst_i_1 (.I0(cin_IBUF), .I1(a_IBUF), .I2(b_IBUF), .O(Sum_OBUF));
             LUT3 #(.INIT(8'hE8)) Cout_OBUF_inst_i_1 (.I0(cin_IBUF), .I1(b_IBUF), .I2(a_IBUF), .O(Cout_OBUF));
             IBUF a_IBUF_inst (.I(a), .O(a_IBUF));
             OBUF Sum_OBUF_inst (.I(Sum_OBUF), .O(Sum));
**Utilization Report:** Shows LUT/IO usage.
**Timing Report:** Confirms achievable operating frequency.   

**Learning Outcome**
1.Understand how Verilog RTL is synthesized into gate-level design.
2.Learn how Vivado maps logic into FPGA primitives (LUTs, I/O buffers).
3.Analyze hardware resources and timing feasibility.

