class transaction;
  bit clk;
  bit rst;
  bit [3:0] count; 
  
  function display(string name);
    $display("[%s] clk=%0b rst=%0b count=%0d", name, clk, rst, count);
  endfunction
  
endclass
