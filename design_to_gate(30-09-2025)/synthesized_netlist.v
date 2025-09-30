// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:47:38 2025
// Host        : HARISH running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./synthesized_netlist.v
// Design      : Full_adder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module Full_adder
   (a,b,cin,Sum,Cout);
  input a;
  input b;
  input cin;
  output Sum;
  output Cout;

  wire Cout;
  wire Cout_OBUF;
  wire Sum;
  wire Sum_OBUF;
  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire cin;
  wire cin_IBUF;

    OBUF Cout_OBUF_inst(.I(Cout_OBUF),.O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(.INIT(8'hE8)) 
    Cout_OBUF_inst_i_1 (.I0(cin_IBUF),.I1(b_IBUF),.I2(a_IBUF),.O(Cout_OBUF));
    OBUF Sum_OBUF_inst (.I(Sum_OBUF),.O(Sum));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(.INIT(8'h96)) 
    Sum_OBUF_inst_i_1 (.I0(cin_IBUF),.I1(a_IBUF),.I2(b_IBUF),.O(Sum_OBUF));
    IBUF a_IBUF_inst (.I(a),.O(a_IBUF));
    IBUF b_IBUF_inst (.I(b),.O(b_IBUF));
    IBUF cin_IBUF_inst(.I(cin),.O(cin_IBUF));
endmodule
