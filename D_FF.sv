module D_FF 
#(parameter WIDTH=1) // fill number of bits 
(
	input logic rst, clk50M,
	input logic [WIDTH-1:0] data_i,
	output logic [WIDTH-1:0] data_o
);

logic clk;
clk_1Hz clk1hz ( .clk50M(clk50M), .clk(clk));

reg [WIDTH-1:0] data;
always_ff@ (posedge clk, negedge rst)
	if (!rst) begin
		data <= 0;
	end else begin
	data <= data_i;
	end
assign data_o=data;
endmodule