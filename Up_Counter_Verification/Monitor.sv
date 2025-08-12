class monitor;
  transaction tr;
  mailbox m2;
  virtual inf vir;
  
  function new(mailbox m2 , virtual inf vir);
    this.m2 = m2;
    this.vir = vir;
  endfunction
  
  task step3();
    repeat(2) begin
      @(posedge vir.clk);
      tr = new();
      tr.clk = vir.clk;
      tr.rst = vir.rst;
      tr.count = vir.count;
      m2.put(tr);
    end
  endtask
  
endclass
