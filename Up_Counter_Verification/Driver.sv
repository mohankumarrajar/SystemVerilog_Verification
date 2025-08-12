class driver;
  transaction tr;
  mailbox m1;
  virtual inf vir;
  
  function new(mailbox m1 , virtual inf vir);
    this.m1 = m1;
    this.vir = vir;
  endfunction
  
  task step2();
    repeat(2) begin
      m1.get(tr); 
      tr.display("driver");
    end
  endtask
  
endclass
