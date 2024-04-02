`timescale 1ns / 1ps

///////full adder
module full_adder(a,b,cin,s,c);
input a,b,cin;
output s,c;
assign s=(a^b^cin);
assign c=((a^b)&cin)|(a&b);	
endmodule

