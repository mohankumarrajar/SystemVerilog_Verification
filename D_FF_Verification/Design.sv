module d_ff(
  input logic clk, rst, d,
  output logic q
);
  
  always @(posedge clk) begin
    if (rst)
      q <= 0;
    else
      q <= d;
  end
  
endmodule

