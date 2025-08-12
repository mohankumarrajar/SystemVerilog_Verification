class monitor;
  virtual intf vif;
  mailbox mon2scb;
    transaction trans;

  function new(virtual intf vif, mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb;
  endfunction

  task main();

    repeat(2) begin
      @(posedge vif.clk);
      trans = new();
      trans.d = vif.d;
      trans.q = vif.q;
      mon2scb.put(trans);
      trans.display("Monitor");
    end
  endtask
  
endclass
