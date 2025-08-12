class scoreboard;
  transaction tr;
  mailbox m2;
  int expected_count;
  virtual inf vir;
  
  function new(mailbox m2, virtual inf vir);
    this.m2 = m2;
    this.vir = vir;
    expected_count = 0;
  endfunction

  task step4();
    repeat(2) begin
      m2.get(tr);
      @(posedge vir.clk);
      if (tr.rst)
        expected_count = 0; 
      else
        expected_count++;
      
      @(posedge vir.clk); 
      if (tr.count == expected_count)
        $display("PASS: count=%0d expected=%0d", tr.count, expected_count);
      else
        $display("FAIL: count=%0d expected=%0d", tr.count, expected_count);
    end
  endtask
  
endclass
