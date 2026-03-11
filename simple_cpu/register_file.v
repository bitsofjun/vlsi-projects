module register_file(
    input clk,
    input we,
    input [1:0] rs1,
    input [1:0] rs2,
    input [1:0] rd,
    input [7:0] wd,
    output [7:0] rd1,
    output [7:0] rd2
);

reg [7:0] regfile [0:3];

assign rd1 = regfile[rs1];
assign rd2 = regfile[rs2];

always @(posedge clk) begin
    if(we)
        regfile[rd] <= wd;
end

endmodule
