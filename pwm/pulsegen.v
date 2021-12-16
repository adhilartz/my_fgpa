`timescale 1ns / 1ps

module pulsegen(clk,pulse);
input clk;
output pulse;

wire [7:0] pin;
assign pin = 128;

pwm pwm_inst(.pin(pin), .pout(pulse), .clk(clk));

endmodule
