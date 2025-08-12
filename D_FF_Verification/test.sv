`include "environment.sv"

program test(intf intff);
  environment env;
  virtual intf vif;

  initial begin
    vif = intff;         
    env = new(vif);      
    env.test_run();
  end
  
endprogram

