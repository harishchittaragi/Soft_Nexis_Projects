`timescale 1ns / 1ps
module full_adder_tb;
    reg a, b, cin;
    wire Sum, Cout;
    Full_adder dut (.a(a),.b(b),.cin(cin),.Sum(Sum),.Cout(Cout));

    initial begin
        $monitor($time, " a=%b b=%b Cin=%b Sum=%b Cout=%b", a, b, cin, Sum, Cout);
        a = 0; b = 0; cin = 0;
        #5 a = 0; b = 0; cin = 1;
        #5 a = 0; b = 1; cin = 0;
        #5 a = 0; b = 1; cin = 1;
        #5 a = 1; b = 0; cin = 0;
        #5 a = 1; b = 0; cin = 1;
        #5 a = 1; b = 1; cin = 0;
        #5 a = 1; b = 1; cin = 1;
        #5 $finish;
    end
endmodule
