module DFF_tb;
  reg reset, set, en, clk, d;
  wire q;
  
  DFF uut(.RESET(reset), .SET(set), .EN(en), .CLK(clk), .D(d));
  
  always #5 clk = !clk;
  
  initial begin
    $dumpfile ("DFF.vcd");
    $dumpvars;
    
    clk = 0; d=0; reset=0; set=0; en=0;
    
    #20 en= 1; // enable the ENABLE
    #10 reset= 0;// set the RESET as HIGH
    #20 reset= 1;// set the RESET as LOW
    #10 set= 0;
    #20 set= 1;
    #10 d= 1;
    #10 d= 0;
    #10 d= 1;
    
    #30 en= 0;
    
    #30 $finish;
    
  end
endmodule