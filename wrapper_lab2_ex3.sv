module wrapper_lab2_ex3 (
	input logic CLOCK_50,
	output logic [9:0] LEDR,
	input logic [9:0] SW
);

assign LEDR[0] = SW[0];

lab2_ex3 lab2ex3 ( .X(SW[9]), .rst(SW[0]), .clk50M(CLOCK_50), .L1(LEDR[1]), .L2(LEDR[2]), .L3(LEDR[3]), .L4(LEDR[4]), .L5(LEDR[5]), .L6(LEDR[6]), .L7(LEDR[7]), .L8(LEDR[8]), .Z(LEDR[9]));

endmodule