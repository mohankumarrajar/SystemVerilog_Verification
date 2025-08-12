`include "interface.sv"
`include "test.sv"

module tb;
  inf inff();
  test tst(inff);
  
  counter count(.clk(inff.clk),.rst(inff.rst),.count(inff.count));
  
  initial begin
    inff.clk = 0;
    forever #5 inff.clk = ~inff.clk;
  end
  
  initial begin
    inff.rst = 1;
    #10;
    inff.rst = 0;
  end
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
  
  #100 $finish;
  end
endmodule
