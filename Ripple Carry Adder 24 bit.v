`timescale 1ns / 1ps
////////24 bit ripple carry adder
module ripple24(A,B,Cin,S,Cout);
input [23:0]A,B;
input Cin;
output [23:0]S;
output Cout;
wire [22:0]C;
full_adder f1(A[0],B[0],Cin,S[0],C[0]);
full_adder f2(A[1],B[1],C[0],S[1],C[1]);
full_adder f3(A[2],B[2],C[1],S[2],C[2]);
full_adder f4(A[3],B[3],C[2],S[3],C[3]);
full_adder f5(A[4],B[4],C[3],S[4],C[4]);
full_adder f6(A[5],B[5],C[4],S[5],C[5]);
full_adder f7(A[6],B[6],C[5],S[6],C[6]);
full_adder f8(A[7],B[7],C[6],S[7],C[7]);
full_adder f9(A[8],B[8],C[7],S[8],C[8]);
full_adder f10(A[9],B[9],C[8],S[9],C[9]);
full_adder f11(A[10],B[10],C[9],S[10],C[10]);
full_adder f12(A[11],B[11],C[10],S[11],C[11]);
full_adder f13(A[12],B[12],C[11],S[12],C[12]);
full_adder f14(A[13],B[13],C[12],S[13],C[13]);
full_adder f15(A[14],B[14],C[13],S[14],C[14]);
full_adder f16(A[15],B[15],C[14],S[15],C[15]);
full_adder f17(A[16],B[16],C[15],S[16],C[16]);
full_adder f18(A[17],B[17],C[16],S[17],C[17]);
full_adder f19(A[18],B[18],C[17],S[18],C[18]);
full_adder f20(A[19],B[19],C[18],S[19],C[19]);
full_adder f21(A[20],B[20],C[19],S[20],C[20]);
full_adder f22(A[21],B[21],C[20],S[21],C[21]);
full_adder f23(A[22],B[22],C[21],S[22],C[22]);
full_adder  f24(A[23],B[23],C[22],S[23],Cout);
endmodule
