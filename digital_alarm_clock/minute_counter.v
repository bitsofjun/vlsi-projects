module minute_counter(
    input carry,
    input reset,
    output reg [5:0] min,
    output reg carry_out
);

always @(posedge carry or posedge reset)
begin
    if(reset)
    begin
        min <= 0;
        carry_out <= 0;
    end
    else
    begin
        if(min == 59)
        begin
            min <= 0;
            carry_out <= 1;
        end
        else
        begin
            min <= min + 1;
            carry_out <= 0;
        end
    end
end

endmodule
