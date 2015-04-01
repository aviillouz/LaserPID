`timescale 1 ns /1 ps
module deserializer (
	clk,
	reset,
	serial_data_in,
	parallel_data_out);

input clk;
input reset;
input serial_data_in;
output reg [7:0] parallel_data_out;

always @ ( posedge clk or posedge reset)
begin
  if (reset)
    parallel_data_out <= 8'b0;
  else
    parallel_data_out[7:0] <= {parallel_data_out[6:0],serial_data_in};
end
endmodule