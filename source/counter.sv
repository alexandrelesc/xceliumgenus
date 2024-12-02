`timescale 1ns/1ps

module counter(
  input logic clk, m, rst,
  output logic [15:0] count
);
	
  
always_ff @(posedge clk) begin
    if(rst)
      count=0;
    else if(m)
      count=count+1;
    else
      count=count-1;
    end
	
endmodule
