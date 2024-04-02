`timescale 1ns / 1ps

////////half adder
module half_adder(a,b,s,c);
input a,b;
output s,c;
assign s=(a^b);
assign c=(a&b);	
endmodule
