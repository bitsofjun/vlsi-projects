module tb_cpu();

reg clk;
reg reset;

simple_cpu uut(clk, reset);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_cpu);
end

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    reset = 1;
    #10 reset = 0;

    uut.instruction_memory[0] = 8'b00000000;
    uut.instruction_memory[1] = 8'b00100001;
    uut.instruction_memory[2] = 8'b01000010;
    uut.instruction_memory[3] = 8'b01100011;

    #100 $finish;

end

endmodule
