module Sum1bit_TB;

  reg x;
  reg y;
  reg c;
  wire out;
  wire z;


Sum1bit uut(x, y, c,out,z);


initial begin
x=0; y=0; c=0; #3;
x=0; y=0; c=1; #3;
x=0; y=1; c=0; #3;
x=0; y=1; c=1; #3;
x=1; y=0; c=0; #3;
x=1; y=0; c=1; #3;
x=1; y=1; c=0; #3;
x=1; y=1; c=1; #3;



end

initial begin: TEST_CASE
     $dumpfile("Sum1bit_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
