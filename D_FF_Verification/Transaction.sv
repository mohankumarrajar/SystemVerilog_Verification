class transaction;
  
  rand bit d;
       bit q;
  function void display(string name);
    $display("%s", name);
    $display("d=%b, q=%b", d, q);
  endfunction
endclass
