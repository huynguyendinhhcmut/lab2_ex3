module lab2_ex3 (
	input logic X, clk50M, rst,
	output logic L1, L2, L3, L4, L5, L6, L7, L8, Z
);

D_FF dff1 (.clk50M(clk50M), .rst(rst), .data_i(X), .data_o(L1));
D_FF dff2 (.clk50M(clk50M), .rst(rst), .data_i(L1), .data_o(L2));
D_FF dff3 (.clk50M(clk50M), .rst(rst), .data_i(L2), .data_o(L3));
D_FF dff4 (.clk50M(clk50M), .rst(rst), .data_i(L3), .data_o(L4));

D_FF dff5 (.clk50M(clk50M), .rst(rst), .data_i(X), .data_o(L5));
D_FF dff6 (.clk50M(clk50M), .rst(rst), .data_i(L5), .data_o(L6));
D_FF dff7 (.clk50M(clk50M), .rst(rst), .data_i(L6), .data_o(L7));
D_FF dff8 (.clk50M(clk50M), .rst(rst), .data_i(L7), .data_o(L8));

logic A, B;
assign A = (L1 & L2 & L3 & L4); 
assign B = !L5 & !L6 & !L7 & !L8;
or (Z, A, B);

endmodule