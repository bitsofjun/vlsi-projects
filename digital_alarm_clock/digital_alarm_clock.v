module digital_alarm_clock(

input clk,
input reset,

input [4:0] alarm_hour,
input [5:0] alarm_min,

output [4:0] hour,
output [5:0] min,
output [5:0] sec,
output alarm

);

wire tick;
wire carry_sec;
wire carry_min;

clock_divider CD(
    .clk(clk),
    .reset(reset),
    .tick(tick)
);

second_counter SC(
    .tick(tick),
    .reset(reset),
    .sec(sec),
    .carry(carry_sec)
);

minute_counter MC(
    .carry(carry_sec),
    .reset(reset),
    .min(min),
    .carry_out(carry_min)
);

hour_counter HC(
    .carry(carry_min),
    .reset(reset),
    .hour(hour)
);

alarm_compare AC(
    .hour(hour),
    .min(min),

    .alarm_hour(alarm_hour),
    .alarm_min(alarm_min),

    .alarm(alarm)
);

endmodule
