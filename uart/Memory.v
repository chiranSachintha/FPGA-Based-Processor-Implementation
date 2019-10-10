module Memory(
	input wire clk,
	input wire write,
	input wire read,
	input wire [15:0] Din,
	input wire [15:0] address,
	output wire [15:0] Dout
	); 
	
	reg [7:0] memory [0:65535];
	reg [7:0] d;
	
	assign Dout = d;
	
	always @(posedge clk) begin
		if (read) d = memory[address];
		else if (write) memory[address] = Din;
	end
	
endmodule
	