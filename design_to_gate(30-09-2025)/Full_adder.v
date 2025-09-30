`timescale 1ns / 1ps
// Company: Dr.Ambedkar institute of Technology Bangalore
// Engineer:B.E. Final Year 
// Create Date: 16.09.2025 14:24:3
// Module Name: Full_adder
module Full_adder(
    input a,b,cin,
    output Sum,Cout
    );
   assign Sum=a^b^cin;
   assign Cout= (a&b)|((a^b)&cin);
endmodule
