`timescale 1ns/1ps

module rca_4bit_tbc;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;
  rca_4bit dut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  task display_results;
    begin
      $display("Time=%0t | A=%d (%b)  B=%d (%b)  Cin=%b  =>  Sum=%d (%b)  Cout=%b",
                $time, A, A, B, B, Cin, Sum, Sum, Cout);
    end
  endtask

  initial begin
    $display("======== RCA 4-BIT ADDER TEST ========");
    
    A = 4'd5; B = 4'd3; Cin = 0;
    #10 display_results();

    A = 4'd9; B = 4'd7; Cin = 0;
    #10 display_results();

    A = 4'd8; B = 4'd8; Cin = 1;
    #10 display_results();

    A = 4'd15; B = 4'd1; Cin = 0;
    #10 display_results();

    A = 4'd0; B = 4'd0; Cin = 1;
    #10 display_results();

    A = 4'd6; B = 4'd9; Cin = 0;
    #10 display_results();

    $display("======== TEST COMPLETED ========");
    $stop;
  end
endmodule
