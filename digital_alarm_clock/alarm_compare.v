module alarm_compare(
    input [4:0] hour,
    input [5:0] min,

    input [4:0] alarm_hour,
    input [5:0] alarm_min,

    output reg alarm
);

always @(*)
begin
    if(hour == alarm_hour && min == alarm_min)
        alarm = 1;
    else
        alarm = 0;
end

endmodule
