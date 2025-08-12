class driver;
  virtual intf vif;
  mailbox gen2drv;
transaction trans;
  
  function new(virtual intf vif, mailbox gen2drv);
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction

task main();
  repeat(2) begin
    gen2drv.get(trans);
    vif.d <= trans.d;       
    trans.display("Driver");
    @(posedge vif.clk);    
  end
endtask
  
endclass
