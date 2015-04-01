//A PI controller
//moudle to correct signal_output according to error_input
module basic_pi_controller(
 output signed [8:0] signal_output, //the signal - output
 input signed [8:0] error_input, //the error - input
 input clk,
 input reset);

	//some values for the PID parameters
	//should be tuned to fit the system (by trail and error, for example)	
	parameter k1 = 123;  
	parameter k2 = 456;

	// registers for previous signal and error
	reg signed [8:0] previousSignal;
	reg signed [8:0] previousError;

	//the digital PID equation
	assign signal_output = previousSignal + k1*error_input - k2*previousError;

	//update registers on each clock edge
	always @ (posedge clk)
		if (reset == 1) begin
			previousSignal <= 0;
			previousError <= 0;
		end
		else begin
			previousError <= error_input;
			previousSignal <= signal_output;
		end
endmodule
