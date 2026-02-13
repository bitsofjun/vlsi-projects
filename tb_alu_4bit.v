module tb_alu_4bit();

reg [3:0] A, B;
reg [2:0] ALU_Sel;
wire [3:0] ALU_Out;

alu_4bit DUT (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out)
);

initial begin
    // Test values
    A = 4'b0101; 
    B = 4'b0011;

    // Arithmetic Operations
    ALU_Sel = 3'b000; #10;   // ADD
    ALU_Sel = 3'b001; #10;   // SUB

    // Logical Operations
    ALU_Sel = 3'b010; #10;   // AND
    ALU_Sel = 3'b011; #10;   // OR
    ALU_Sel = 3'b100; #10;   // XOR
    ALU_Sel = 3'b101; #10;   // NAND
    ALU_Sel = 3'b110; #10;   // NOR
    ALU_Sel = 3'b111; #10;   // XNOR

    $stop;
end

endmodule
