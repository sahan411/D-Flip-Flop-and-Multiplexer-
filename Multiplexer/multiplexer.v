module multiplexer(input [3:0] DATA_IN, input [1:0] SELECT, output reg DATA_OUT);

	always @(*) begin	
		case(SELECT)
			2'b00: DATA_OUT = DATA_IN[0];
			2'b01: DATA_OUT = DATA_IN[1];
			2'b10: DATA_OUT = DATA_IN[2];
			2'b11: DATA_OUT = DATA_IN[3];
			default: DATA_OUT = 1'b0;
		endcase
	end
	
endmodule