module simple_cpu(
    input clk,
    input reset
);

reg [7:0] instruction_memory [0:7];
reg [2:0] pc;

wire [7:0] rs1_data;
wire [7:0] rs2_data;
wire [7:0] alu_result;

wire [1:0] rs1;
wire [1:0] rs2;
wire [1:0] rd;
wire [2:0] opcode;

assign opcode = instruction_memory[pc][7:5];
assign rs1 = instruction_memory[pc][4:3];
assign rs2 = instruction_memory[pc][2:1];
assign rd = instruction_memory[pc][0:0];

alu alu_unit(
    rs1_data,
    rs2_data,
    opcode,
    alu_result
);

register_file rf(
    clk,
    1'b1,
    rs1,
    rs2,
    rd,
    alu_result,
    rs1_data,
    rs2_data
);

always @(posedge clk or posedge reset) begin
    if(reset)
        pc <= 0;
    else
        pc <= pc + 1;
end

endmodule
