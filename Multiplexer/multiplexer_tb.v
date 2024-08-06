module multiplexer_tb();
	reg [3:0] data_in;
	reg	[1:0] select;
	wire data_out;
	
	multiplexer uut( 
		.DATA_IN(data_in), 
		.SELECT(select), 
		.DATA_OUT(data_out)
	);
	
	initial begin 
		$dumpfile("multiplexer.vcd");
		$dumpvars;
		
		data_in = 4'b1101;
		#10 select = 2'b00;
		#10 select = 2'b01;
		#10 select = 2'b10;
		#10 select = 2'b11;
		
		#10 $finish;
	end
	
endmodule