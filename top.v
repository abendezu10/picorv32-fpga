module top(
  input clk,
  input resetn,
  output [7:0] led
);

	wire mem_valid;
	wire mem_instr;
	reg mem_ready;
	wire [31:0] mem_addr;
	wire [31:0] mem_wdata;
	wire [ 3:0] mem_wstrb;
	reg [31:0] mem_rdata;

	reg [31:0] memory [0:255]; // BRAM Intialization


	initial begin
		$readmemh("leds.hex", memory);
	end


	picorv32 cpu (
		.clk(clk),
		.resetn(resetn),
		.mem_valid(mem_valid),
		.mem_instr(mem_instr),
		.mem_ready(mem_ready),
		.mem_addr(mem_addr),
		.mem_wdata(mem_wdata),
		.mem_wstrb(mem_wstrb),
		.mem_rdata(mem_rdata)
	);

	always @(posedge clk or negedge resetn) begin
		if(!resetn)begin
			
		end else begin
		
			if (mem_valid) begin
            if (mem_wstrb) begin // Write operation
                if (mem_wstrb[0]) memory[mem_addr[9:2]][7:0]   <= mem_wdata[7:0];
                if (mem_wstrb[1]) memory[mem_addr[9:2]][15:8]  <= mem_wdata[15:8];
                if (mem_wstrb[2]) memory[mem_addr[9:2]][23:16] <= mem_wdata[23:16];
                if (mem_wstrb[3]) memory[mem_addr[9:2]][31:24] <= mem_wdata[31:24];
            end else begin // Read operation
                mem_rdata <= memory[mem_addr[9:2]];
            end
            mem_ready <= 1; // Acknowledge the transaction
        end else begin
            mem_ready <= 0; // No transaction in progress
        end
    end

	end
	

	assign led[7:0] = memory[0][7:0];
	
endmodule 
