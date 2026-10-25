module hour_counter(
    input carry,
    input reset,
    output reg [4:0] hour
);

always @(posedge carry or posedge reset)
begin
    if(reset)
        hour <= 0;
    else
    begin
        if(hour == 23)
            hour <= 0;
        else
            hour <= hour + 1;
    end
end

endmodule
