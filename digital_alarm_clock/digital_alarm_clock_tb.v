`timescale 1ns/1ps

module digital_alarm_clock_tb;

reg clk;
reg reset;

reg [4:0] alarm_hour;
reg [5:0] alarm_min;

wire [4:0] hour;
wire [5:0] min;
wire [5:0] sec;

wire alarm;

digital_alarm_clock uut(

.clk(clk),
.reset(reset),

.alarm_hour(alarm_hour),
.alarm_min(alarm_min),

.hour(hour),
.min(min),
.sec(sec),
.alarm(alarm)

);

always #5 clk = ~clk;

initial
begin

$dumpfile("waveform.vcd");
$dumpvars(0,digital_alarm_clock_tb);

clk = 0;
reset = 1;

alarm_hour = 0;
alarm_min = 1;

#20

reset = 0;

#62000

$finish;

end

initial
begin
$monitor("TIME=%0t Hour=%0d Min=%0d Sec=%0d Alarm=%b",
$time,hour,min,sec,alarm);
end

endmodule
