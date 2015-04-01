module basic_pi_controller(
 output signed [8:0] u_out, //the signal - output
 input signed [8:0] e_in, //the error - input
 input clk,
 input reset);

	
	parameter k1=107; 
	parameter k2 = 104;

	reg signed [8:0] u_prev;
	reg signed [8:0] e_prev;
	assign u_out = u_prev + k1*e_in - k2*e_prev;
	always @ (posedge clk)
		if (reset == 1) begin
			u_prev <= 0;
			e_prev <= 0;
		end
		else begin
			e_prev <= e_in;
			u_prev <= u_out;
		end
endmodule
