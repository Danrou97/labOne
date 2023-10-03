module testbench_sumadorestador();
   // Inputs
   reg [3:0] A;
   reg [3:0] B;
   reg Op;
   
   // Outputs
   wire [3:0] S;
   wire C;
   wire V;
   
   // Instantiate the sumadorestador module
   sumadorestador uut(
      .S(S),
      .C(C),
      .V(V),
      .A(A),
      .B(B),
      .Op(Op)
   );
   
   // Monitor outputs
   initial begin
      $monitor("A = %b, B = %b, Op = %b, S = %b, C = %b, V = %b", A, B, Op, S, C, V);
      
      // Test Case 1: Addition (Op=0)
      A = 4'b0110;
      B = 4'b1010;
      Op = 1'b0;
      #10; // Wait for 10 time units
      
      // Test Case 2: Subtraction (Op=1)
      A = 4'b0110;
      B = 4'b1010;
      Op = 1'b1;
      #10; // Wait for 10 time units

      // Test Case 3: Overflow in Addition
      A = 4'b1111;
      B = 4'b0001;
      Op = 1'b0;
      #10; // Wait for 10 time units
      
      // Test Case 4: Zero Result in Addition
A = 4'b0101;
B = 4'b1011;
Op = 1'b0;
#10; // Wait for 10 time units
// Expected output: S=4'b0000, C=1'b0, V=1'b0

// Test Case 5: Zero Result in Subtraction
A = 4'b0101;
B = 4'b0101;
Op = 1'b1;
#10; // Wait for 10 time units
// Expected output: S=4'b0000, C=1'b1, V=1'b0

// Test Case 6: Large Addition (No Overflow)
A = 4'b1101;
B = 4'b0011;
Op = 1'b0;
#10; // Wait for 10 time units
// Expected output: S=4'b10000, C=1'b0, V=1'b0

// Test Case 7: Large Subtraction (No Overflow)
A = 4'b1101;
B = 4'b0011;
Op = 1'b1;
#10; // Wait for 10 time units
// Expected output: S=4'b01100, C=1'b1, V=1'b1

// Test Case 8: Large Addition (Overflow)
A = 4'b1111;
B = 4'b0111;
Op = 1'b0;
#10; // Wait for 10 time units
// Expected output: S=4'b11111, C=1'b1, V=1'b1

// Test Case 9: Large Subtraction (Overflow)
A = 4'b1001;
B = 4'b1101;
Op = 1'b1;
#10; // Wait for 10 time units
// Expected output: S=4'b11100, C=1'b0, V=1'b1
      
      // End the simulation
      $finish;
   end

    // WAVES IN VCD TO OPEN IN GTKWAVE
  initial
  begin
    $dumpfile("top.vcd");
    $dumpvars(0, testbench_sumadorestador);
  end
endmodule
