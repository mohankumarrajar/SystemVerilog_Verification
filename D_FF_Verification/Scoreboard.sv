class scoreboard;
  mailbox mon2scb;
  transaction trans;

  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction

  task main();
    repeat(2) begin
      mon2scb.get(trans);
      trans.display("Scoreboard");

      if (trans.q == trans.d)
        $display("PASS");
      else
        $display("FAIL");
    end
  endtask
  
endclass
