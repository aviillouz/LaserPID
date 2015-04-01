module sw_to_led(
	// A simple test module to verify gpio assginments 
	input  [8:0] sw,
	output [40:0] gpio1,
	output  [8:0] led); 

	assign led[0] = sw[0];
	assign led[1] = sw[1];
	assign led[2] = sw[2];
	assign led[3] = sw[3];
	assign led[4] = sw[4];
	assign led[5] = sw[5];
	assign led[6] = sw[6];
	assign led[7] = sw[7];
	
	assign gpio1[0] = sw[0];
	assign gpio1[1] = sw[1];
	assign gpio1[2] = sw[2];
	assign gpio1[3] = sw[3];
	assign gpio1[4] = sw[4];
	assign gpio1[4] = sw[4];
	assign gpio1[5] = sw[5];
	assign gpio1[6] = sw[6];
	assign gpio1[7] = sw[7];
endmodule