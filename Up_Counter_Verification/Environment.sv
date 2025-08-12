`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  generator gen;
  driver dri;
  monitor mon;
  scoreboard score;
  
  mailbox m1;
  mailbox m2;
  
  virtual inf vir;
  
  function new(virtual inf vir);
    this.vir = vir;
    m1 = new();
    m2 = new();
    gen = new(m1);
    dri = new(m1, vir);
    mon = new(m2, vir);
    score = new(m2, vir); 
  endfunction
  
  task run();
    fork
      gen.step1();
      dri.step2();
      mon.step3();
      score.step4();
    join
  endtask
  
endclass
