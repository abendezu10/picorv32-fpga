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
    wire [3:0] mem_wstrb;
    reg [31:0] mem_rdata;
    wire [31:0] led_reg;
    wire trap;
	
    reg [31:0] ram [0:1023];


    initial begin
        ram[0]  = 32'h00001137; 
        ram[1]  = 32'hFFC10113; 
        ram[2]  = 32'h00000193;
        ram[3]  = 32'h017D8237;
        ram[4]  = 32'h84020213;
        ram[5]  = 32'h10000293;
        ram[6]  = 32'h00000313; 
        ram[7]  = 32'h00C000EF; 
        ram[8]  = 32'h00130313; 
        ram[9]  = 32'hFE531CE3; 
        ram[10] = 32'h00118193; 
        ram[11] = 32'hFE419EE3; 
        ram[12] = 32'h00000193; 
        ram[13] = 32'h00008067; 
    end
	 
        

	 
	 always @(posedge clk) begin
        mem_rdata <= ram[mem_addr[11:2]];
    end


    picorv32 cpu (
        .clk(clk),
        .resetn(resetn),
        .mem_valid(mem_valid),
        .trap(trap),
        .mem_instr(mem_instr),
        .mem_ready(mem_ready),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_wstrb(mem_wstrb),
        .mem_rdata(mem_rdata),
        .led_reg(led_reg)
    );

always @(posedge clk or negedge resetn) begin
    if (!resetn) begin
        mem_ready <= 0;
    end else if (mem_valid && mem_instr) begin
        mem_ready <= 1; 
    end else begin
        mem_ready <= 0; 
    end
end


assign led = led_reg;

  

endmodule
