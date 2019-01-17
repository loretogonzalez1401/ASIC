module register_bank #(
	parameter WIDTH = 8 )(
	input [0:0]	       clk,
	input [0:0]	       rst,
	input [0:0]	       wr_en,
	input [WIDTH-1:0]      in,
	output reg [WIDTH-1:0] out	
	);
always @(posedge clk && wr_en)
 begin
 if (rst) out = 8'b00000000;
   else out <= in;
end
endmodule
