class generator;
  transaction tr;
  mailbox m1;
  
  function new(mailbox m1);
    this.m1 = m1;
  endfunction
  
  task step1();
    repeat(2)begin
      tr = new();
      tr.randomize();
      tr.display("generator");
      m1.put(tr);
    end
  endtask
  
endclass
