`include "interface.sv"
`include "test.sv"


module testbench;
  intf intff();

  test tst(.intff(intff)); 

  d_ff df(.clk(intff.clk),
          .rst(intff.rst),
          .d(intff.d),
          .q(intff.q));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end

  initial begin
    intff.clk = 0;
    forever #2 intff.clk = ~intff.clk;
  end

  initial begin
    intff.rst = 1;
    #5 intff.rst = 0;
  end
endmodule
