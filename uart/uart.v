module uart(
	 input clk,Reset,start,
	 output reg [7:0] led,
	 input wire rx,
	 output wire tx,
	 output reg res,
	 output t

	);
	
	wire s_tick;
	wire tx_done_tick;
	wire tx_start=1'b1;
	wire rx_done_tick;
	wire [7:0] rxd;
	reg startr = 1'd0;
	
	reg read = 0;
	reg write = 1;
	wire [7:0] din;
	wire[15:0] addr;
	
	reg [16:0] count = 0;
	reg [16:0] countn = 0;
	reg [16:0] count2 = 0;
	
	reg [1:0] state = 2'b00;
	reg [1:0] staten = 2'b00;
	localparam recv = 2'b00,
				  trans = 2'd01,
				  nope = 2'd10;
	
	assign addr = count;
	
	
	Memory mem(.clk(clk), .read(read), .write(write), .Din(rxd), .Dout(din), .address(addr),);
	boudclock baud(.start(), .clock(clk), .boudtick(s_tick));
	transmitter tr(.clock(clk), .Tx_start(startr), .TxD_data(din), .TxD(tx), .TxD_busy(tx_done_tick));
	reciever re(.clock(clk), .data(rx), .character(rxd), .dataReady(rx_done_tick));
	
always @(posedge clk) begin
	state = staten;
	count = countn;
	led = count;
	case (state) 
		recv : begin
			if(rx_done_tick) begin
				//led =rxd;
				count2 = count2+1;
				countn = countn+1;
				if(count==65535) begin
					write = 0;
					read = 1;
					startr = 1;
					staten = trans;
					countn = 0;
					count=0;
				end
			end
		end
		
		trans : begin
			if(~(tx_done_tick)) begin
				countn = countn+1;
				if(countn == 65536) begin
					startr = 0;
					//led = addr;
					staten = nope;
				end
			end
		end
		
		nope : staten = nope;
	endcase

end
	
endmodule