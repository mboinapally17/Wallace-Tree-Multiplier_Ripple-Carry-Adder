`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:09 08/13/2021 
// Design Name: 
// Module Name:    wallace16 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module wallce16(A,B,prod);
input [15:0]A,B;
output[31:0]prod;
wire [15:0]p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
wire [23:0]m,n;
wire [23:0]s;
wire [79:0]s1,c1;
wire [35:0]s4,c4;
wire [23:0]s5,c5;
wire [25:0]s6,c6;
wire [49:0]s2,c2;
wire [36:0]s3,c3;
wire cout;
wire c;
assign  p0 = A & {16{B[0]}};
assign  p1 = A & {16{B[1]}};
assign  p2 = A & {16{B[2]}};
assign  p3 = A & {16{B[3]}};
assign  p4 = A & {16{B[4]}};
assign  p5 = A & {16{B[5]}};
assign  p6 = A & {16{B[6]}};
assign  p7 = A & {16{B[7]}};
assign  p8 = A & {16{B[8]}};
assign  p9 = A & {16{B[9]}};
assign  p10 = A & {16{B[10]}};
assign  p11 = A & {16{B[11]}};
assign  p12 = A & {16{B[12]}};
assign  p13 = A & {16{B[13]}};
assign  p14 = A & {16{B[14]}};
assign  p15 = A & {16{B[15]}};
///////first stage
half_adder f1(p0[1],p1[0],s1[0],c1[0]);
full_adder f2(p0[2],p1[1],p2[0],s1[1],c1[1]);
full_adder f3(p0[3],p1[2],p2[1],s1[2],c1[2]);
full_adder f4(p0[4],p1[3],p2[2],s1[3],c1[3]);
half_adder f5(p3[1],p4[0],s1[4],c1[4]);
full_adder f6(p0[5],p1[4],p2[3],s1[5],c1[5]);
full_adder f7(p3[2],p4[1],p5[0],s1[6],c1[6]);
full_adder f8(p0[6],p1[5],p2[4],s1[7],c1[7]);
full_adder f9(p3[3],p4[2],p5[1],s1[8],c1[8]);
full_adder f10(p0[7],p1[6],p2[5],s1[9],c1[9]);
full_adder f11(p3[4],p4[3],p5[2],s1[10],c1[10]);
half_adder f12(p6[1],p7[0],s1[11],c1[11]);
full_adder f13(p0[8],p1[7],p2[6],s1[12],c1[12]);
full_adder f14(p3[5],p4[4],p5[3],s1[13],c1[13]);
full_adder f15(p6[2],p7[1],p8[0],s1[14],c1[14]);
full_adder f16(p0[9],p1[8],p2[7],s1[15],c1[15]);
full_adder f17(p3[6],p4[5],p5[4],s1[16],c1[16]);
full_adder f18(p6[3],p7[2],p8[1],s1[17],c1[17]);
full_adder f19(p0[10],p1[9],p2[8],s1[18],c1[18]);
full_adder f20(p3[7],p4[6],p5[5],s1[19],c1[19]);
full_adder f21(p6[4],p7[3],p8[2],s1[20],c1[20]);
half_adder f22(p9[1],p10[0],s1[21],c1[21]);
full_adder f23(p0[11],p1[10],p2[9],s1[22],c1[22]);
full_adder f24(p3[8],p4[7],p5[6],s1[23],c1[23]);
full_adder f25(p6[5],p7[4],p8[3],s1[24],c1[24]);
full_adder f26(p9[2],p10[1],p11[0],s1[25],c1[25]);
full_adder f27(p0[12],p1[11],p2[10],s1[26],c1[26]);
full_adder f28(p3[9],p4[8],p5[7],s1[27],c1[27]);
full_adder f29(p6[6],p7[5],p8[4],s1[28],c1[28]);
full_adder f30(p9[3],p10[2],p11[1],s1[29],c1[29]);
full_adder f31(p0[13],p1[12],p2[11],s1[30],c1[30]);
full_adder f32(p3[10],p4[9],p5[8],s1[31],c1[31]);
full_adder f33(p6[7],p7[6],p8[5],s1[32],c1[32]);
full_adder f34(p9[4],p10[3],p11[2],s1[33],c1[33]);
half_adder f35(p12[1],p13[0],s1[34],c1[34]);
full_adder f36(p0[14],p1[13],p2[12],s1[35],c1[35]);
full_adder f37(p3[11],p4[10],p5[9],s1[36],c1[36]);
full_adder f38(p6[8],p7[7],p8[6],s1[37],c1[37]);
full_adder f39(p9[5],p10[4],p11[3],s1[38],c1[38]);
full_adder f40(p12[2],p13[1],p14[0],s1[39],c1[39]);
full_adder f41(p0[15],p1[14],p2[13],s1[40],c1[40]);
full_adder f42(p3[12],p4[11],p5[10],s1[41],c1[41]);
full_adder f43(p6[9],p7[8],p8[7],s1[42],c1[42]);
full_adder f44(p9[6],p10[5],p11[4],s1[43],c1[43]);
full_adder f45(p12[3],p13[2],p14[1],s1[44],c1[44]);
half_adder f46(p1[15],p2[14],s1[45],c1[45]);
full_adder f47(p3[13],p4[12],p5[11],s1[46],c1[46]);
full_adder f48(p6[10],p7[9],p8[8],s1[47],c1[47]);
full_adder f49(p9[7],p10[6],p11[5],s1[48],c1[48]);
full_adder f50(p12[4],p13[3],p14[2],s1[49],c1[49]);
full_adder f51(p3[14],p4[13],p5[12],s1[50],c1[50]);
full_adder f52(p6[11],p7[10],p8[9],s1[51],c1[51]);
full_adder f53(p9[8],p10[7],p11[6],s1[52],c1[52]);
full_adder f54(p12[5],p13[4],p14[3],s1[53],c1[53]);
full_adder f55(p3[15],p4[14],p5[13],s1[54],c1[54]);
full_adder f56(p6[12],p7[11],p8[10],s1[55],c1[55]);
full_adder f57(p9[9],p10[8],p11[7],s1[56],c1[56]);
full_adder f58(p12[6],p13[5],p14[4],s1[57],c1[57]);
half_adder f59(p4[15],p5[14],s1[58],c1[58]);
full_adder f60(p6[13],p7[12],p8[11],s1[59],c1[59]);
full_adder f61(p9[10],p10[9],p11[8],s1[60],c1[60]);
full_adder f62(p12[7],p13[6],p14[5],s1[61],c1[61]);
full_adder f63(p6[14],p7[13],p8[12],s1[62],c1[62]);
full_adder f64(p9[11],p10[10],p11[9],s1[63],c1[63]);
full_adder f65(p12[8],p13[7],p14[6],s1[64],c1[64]);
full_adder f66(p6[15],p7[14],p8[13],s1[65],c1[65]);
full_adder f67(p9[12],p10[11],p11[10],s1[66],c1[66]);
full_adder f68(p12[9],p13[8],p14[7],s1[67],c1[67]);
half_adder f69(p7[15],p8[14],s1[68],c1[68]);
full_adder f70(p9[13],p10[12],p11[11],s1[69],c1[69]);
full_adder f71(p12[10],p13[9],p14[8],s1[70],c1[70]);
full_adder f72(p9[14],p10[13],p11[12],s1[71],c1[71]);
full_adder f73(p12[11],p13[10],p14[9],s1[72],c1[72]);
full_adder f74(p9[15],p10[14],p11[13],s1[73],c1[73]);
full_adder f75(p12[12],p13[11],p14[10],s1[74],c1[74]);
half_adder f76(p10[15],p11[14],s1[75],c1[75]);
full_adder f77(p12[13],p13[12],p14[11],s1[76],c1[76]);
full_adder f78(p12[14],p13[13],p14[12],s1[77],c1[77]);
full_adder f79(p12[15],p13[14],p14[13],s1[78],c1[78]);
half_adder f80(p13[15],p14[14],s1[79],c1[79]);
//////////second stage
half_adder f81(s1[1],c1[0],s2[0],c2[0]);
full_adder f82(s1[2],c1[1],p3[0],s2[1],c2[1]);
full_adder f83(s1[3],c1[2],s1[4],s2[2],c2[2]);
full_adder f84(s1[5],c1[3],s1[6],s2[3],c2[3]);
full_adder f85(s1[7],c1[5],s1[8],s2[4],c2[4]);
half_adder f86(c1[6],p6[0],s2[5],c2[5]);
full_adder f87(s1[9],c1[7],s1[10],s2[6],c2[6]);
half_adder f88(c1[8],s1[11],s2[7],c2[7]);
full_adder f89(s1[12],c1[9],s1[13],s2[8],c2[8]);
full_adder f90(c1[10],s1[14],c1[11],s2[9],c2[9]);
full_adder f91(s1[15],c1[12],s1[16],s2[10],c2[10]);
full_adder f92(c1[13],s1[17],c1[14],s2[11],c2[11]);
full_adder f93(s1[18],c1[15],s1[19],s2[12],c2[12]);
full_adder f94(c1[16],s1[20],c1[17],s2[13],c2[13]);
full_adder f95(s1[22],c1[18],s1[23],s2[14],c2[14]);
full_adder f96(c1[19],s1[24],c1[20],s2[15],c2[15]);
half_adder f97(s1[25],c1[21],s2[16],c2[16]);
full_adder f98(s1[26],c1[22],s1[27],s2[17],c2[17]);
full_adder f99(c1[23],s1[28],c1[24],s2[18],c2[18]);
full_adder f100(s1[29],c1[25],p12[0],s2[19],c2[19]);
full_adder f101(s1[30],c1[26],s1[31],s2[20],c2[20]);
full_adder f102(c1[27],s1[32],c1[28],s2[21],c2[21]);
full_adder f103(s1[33],c1[29],s1[34],s2[22],c2[22]);
full_adder f104(s1[35],c1[30],s1[36],s2[23],c2[23]);
full_adder f105(c1[31],s1[37],c1[32],s2[24],c2[24]);
full_adder f106(s1[38],c1[33],s1[39],s2[25],c2[25]);
full_adder f107(s1[40],c1[35],s1[41],s2[26],c2[26]);
full_adder f108(c1[36],s1[42],c1[37],s2[27],c2[27]);
full_adder f109(s1[43],c1[38],s1[44],s2[28],c2[28]);
full_adder f110(s1[45],c1[40],s1[46],s2[29],c2[29]);
full_adder f111(c1[41],s1[47],c1[42],s2[30],c2[30]);
full_adder f112(s1[48],c1[43],s1[49],s2[31],c2[31]);
full_adder f113(p2[15],c1[45],s1[50],s2[32],c2[32]);
full_adder f114(c1[46],s1[51],c1[47],s2[33],c2[33]);
full_adder f115(s1[52],c1[48],s1[53],s2[34],c2[34]);
full_adder f116(c1[50],s1[55],c1[51],s2[35],c2[35]);
full_adder f117(s1[56],c1[52],s1[57],s2[36],c2[36]);
full_adder f118(c1[54],s1[59],c1[55],s2[37],c2[37]);
full_adder f119(s1[60],c1[56],s1[61],s2[38],c2[38]);
full_adder f120(c1[58],s1[62],c1[59],s2[39],c2[39]);
full_adder f121(s1[63],c1[60],s1[64],s2[40],c2[40]);
half_adder f122(s1[65],c1[62],s2[41],c2[41]);
full_adder f123(s1[66],c1[63],s1[67],s2[42],c2[42]);
half_adder f124(s1[68],c1[65],s2[43],c2[43]);
full_adder f125(s1[69],c1[66],s1[70],s2[44],c2[44]);
half_adder f126(p8[15],c1[68],s2[45],c2[45]);
full_adder f127(s1[71],c1[69],s1[72],s2[46],c2[46]);
full_adder f128(s1[73],c1[71],s1[74],s2[47],c2[47]);
full_adder f129(s1[75],c1[73],s1[76],s2[48],c2[48]);
full_adder f130(p11[15],c1[75],s1[77],s2[49],c2[49]);
////////third stage
half_adder f131(s2[1],c2[0],s3[0],c3[0]);
half_adder f132(s2[2],c2[1],s3[1],c3[1]);
full_adder f133(s2[3],c2[2],c1[4],s3[2],c3[2]);
full_adder f134(s2[4],c2[3],s2[5],s3[3],c3[3]);
full_adder f135(s2[6],c2[4],s2[7],s3[4],c3[4]);
full_adder f136(s2[8],c2[6],s2[9],s3[5],c3[5]);
full_adder f137(s2[10],c2[8],s2[11],s3[6],c3[6]);
half_adder f138(c2[9],p9[0],s3[7],c3[7]);
full_adder f139(s2[12],c2[10],s2[13],s3[8],c3[8]);
half_adder f140(c2[11],s1[21],s3[9],c3[9]);
full_adder f141(s2[14],c2[12],s2[15],s3[10],c3[10]);
half_adder f142(c2[13],s2[16],s3[11],c3[11]);
full_adder f143(s2[17],c2[14],s2[18],s3[12],c3[12]);
full_adder f144(c2[15],s2[19],c2[16],s3[13],c3[13]);
full_adder f145(s2[20],c2[17],s2[21],s3[14],c3[14]);
full_adder f146(c2[18],s2[22],c2[19],s3[15],c3[15]);
full_adder f147(s2[23],c2[20],s2[24],s3[16],c3[16]);
full_adder f148(c2[21],s2[25],c2[22],s3[17],c3[17]);
full_adder f149(s2[26],c2[23],s2[27],s3[18],c3[18]);
full_adder f150(c2[24],s2[28],c2[25],s3[19],c3[19]);
full_adder f151(s2[29],c2[26],s2[30],s3[20],c3[20]);
full_adder f152(c2[27],s2[31],c2[28],s3[21],c3[21]);
full_adder f153(s2[32],c2[29],s2[33],s3[22],c3[22]);
full_adder f154(c2[30],s2[34],c2[31],s3[23],c3[23]);
full_adder f155(s1[54],c2[32],s2[35],s3[24],c3[24]);
full_adder f156(c2[33],s2[36],c2[34],s3[25],c3[25]);
half_adder f157(s1[58],s2[37],s3[26],c3[26]);
full_adder f158(c2[35],s2[38],c2[36],s3[27],c3[27]);
half_adder f159(p5[15],s2[39],s3[28],c3[28]);
full_adder f160(c2[37],s2[40],c2[38],s3[29],c3[29]);
full_adder f161(c2[39],s2[42],c2[40],s3[30],c3[30]);
full_adder f162(c2[41],s2[44],c2[42],s3[31],c3[31]);
full_adder f163(c2[43],s2[46],c2[44],s3[32],c3[32]);
full_adder f164(c2[45],s2[47],c2[46],s3[33],c3[33]);
half_adder f165(s2[48],c2[47],s3[34],c3[34]);
half_adder f166(s2[49],c2[48],s3[35],c3[35]);
half_adder f167(s1[78],c2[49],s3[36],c3[36]);
///////fourth stage
half_adder f168(s3[1],c3[0],s4[0],c4[0]);
half_adder f169(s3[2],c3[1],s4[1],c4[1]);
half_adder f170(s3[3],c3[2],s4[2],c4[2]);
full_adder f171(s3[4],c3[3],c2[5],s4[3],c4[3]);
full_adder f172(s3[5],c3[4],c2[7],s4[4],c4[4]);
full_adder f173(s3[6],c3[5],s3[7],s4[5],c4[5]);
full_adder f174(s3[8],c3[6],s3[9],s4[6],c4[6]);
full_adder f175(s3[10],c3[8],s3[11],s4[7],c4[7]);
full_adder f176(s3[12],c3[10],s3[13],s4[8],c4[8]);
full_adder f177(s3[14],c3[12],s3[15],s4[9],c4[9]);
full_adder f178(s3[16],c3[14],s3[17],s4[10],c4[10]);
half_adder f179(c3[15],c1[34],s4[11],c4[11]);
full_adder f180(s3[18],c3[16],s3[19],s4[12],c4[12]);
full_adder f181(c3[17],c1[39],p15[0],s4[13],c4[13]);
full_adder f182(s3[20],c3[18],s3[21],s4[14],c4[14]);
full_adder f183(c3[19],c1[44],p15[1],s4[15],c4[15]);
full_adder f184(s3[22],c3[20],s3[23],s4[16],c4[16]);
full_adder f185(c3[21],c1[49],p15[2],s4[17],c4[17]);
full_adder f186(s3[24],c3[22],s3[25],s4[18],c4[18]);
full_adder f187(c3[23],c1[53],p15[3],s4[19],c4[19]);
full_adder f188(s3[26],c3[24],s3[27],s4[20],c4[20]);
full_adder f189(c3[25],c1[57],p15[4],s4[21],c4[21]);
full_adder f190(s3[28],c3[26],s3[29],s4[22],c4[22]);
full_adder f191(c3[27],c1[61],p15[5],s4[23],c4[23]);
full_adder f192(s2[41],c3[28],s3[30],s4[24],c4[24]);
full_adder f193(c3[29],c1[64],p15[6],s4[25],c4[25]);
half_adder f194(s2[43],s3[31],s4[26],c4[26]);
full_adder f195(c3[30],c1[67],p15[7],s4[27],c4[27]);
half_adder f196(s2[45],s3[32],s4[28],c4[28]);
full_adder f197(c3[31],c1[70],p15[8],s4[29],c4[29]);
full_adder f198(c3[32],c1[72],p15[9],s4[30],c4[30]);
full_adder f199(c3[33],c1[74],p15[10],s4[31],c4[31]);
full_adder f200(c3[34],c1[76],p15[11],s4[32],c4[32]);
full_adder f201(c3[35],c1[77],p15[12],s4[33],c4[33]);
full_adder f202(c3[36],c1[78],p15[13],s4[34],c4[34]);
full_adder f203(p14[15],c1[79],p15[14],s4[35],c4[35]);
////////fifth stage
half_adder f204(s4[1],c4[0],s5[0],c5[0]);
half_adder f205(s4[2],c4[1],s5[1],c5[1]);
half_adder f206(s4[3],c4[2],s5[2],c5[2]);
half_adder f207(s4[4],c4[3],s5[3],c5[3]);
half_adder f208(s4[5],c4[4],s5[4],c5[4]);
full_adder f209(s4[6],c4[5],c3[7],s5[5],c5[5]);
full_adder f210(s4[7],c4[6],c3[9],s5[6],c5[6]);
full_adder f211(s4[8],c4[7],c3[11],s5[7],c5[7]);
full_adder f212(s4[9],c4[8],c3[13],s5[8],c5[8]);
full_adder f213(s4[10],c4[9],s4[11],s5[9],c5[9]);
full_adder f214(s4[12],c4[10],s4[13],s5[10],c5[10]);
full_adder f215(s4[14],c4[12],s4[15],s5[11],c5[11]);
full_adder f216(s4[16],c4[14],s4[17],s5[12],c5[12]);
full_adder f217(s4[18],c4[16],s4[19],s5[13],c5[13]);
full_adder f218(s4[20],c4[18],s4[21],s5[14],c5[14]);
full_adder f219(s4[22],c4[20],s4[23],s5[15],c5[15]);
full_adder f220(s4[24],c4[22],s4[25],s5[16],c5[16]);
full_adder f221(s4[26],c4[24],s4[27],s5[17],c5[17]);
full_adder f222(s4[28],c4[26],s4[29],s5[18],c5[18]);
full_adder f223(s3[33],c4[28],s4[30],s5[19],c5[19]);
half_adder f224(s3[34],s4[31],s5[20],c5[20]);
half_adder f225(s3[35],s4[32],s5[21],c5[21]);
half_adder f226(s3[36],s4[33],s5[22],c5[22]);
half_adder f227(s1[79],s4[34],s5[23],c5[23]);
half_adder f228(s5[1],c5[0],s6[0],c6[0]);
half_adder f229(s5[2],c5[1],s6[1],c6[1]);
half_adder f230(s5[3],c5[2],s6[2],c6[2]);
half_adder f231(s5[4],c5[3],s6[3],c6[3]);
half_adder f232(s5[5],c5[4],s6[4],c6[4]);
half_adder f233(s5[6],c5[5],s6[5],c6[5]);
half_adder f234(s5[7],c5[6],s6[6],c6[6]);
half_adder f235(s5[8],c5[7],s6[7],c6[7]);
half_adder f236(s5[9],c5[8],s6[8],c6[8]);
full_adder f237(s5[10],c5[9],c4[11],s6[9],c6[9]);
full_adder f238(s5[11],c5[10],c4[13],s6[10],c6[10]);
full_adder f239(s5[12],c5[11],c4[15],s6[11],c6[11]);
full_adder f240(s5[13],c5[12],c4[17],s6[12],c6[12]);
full_adder f241(s5[14],c5[13],c4[19],s6[13],c6[13]);
full_adder f242(s5[15],c5[14],c4[21],s6[14],c6[14]);
full_adder f243(s5[16],c5[15],c4[23],s6[15],c6[15]);
full_adder f244(s5[17],c5[16],c4[25],s6[16],c6[16]);
full_adder f245(s5[18],c5[17],c4[27],s6[17],c6[17]);
full_adder f246(s5[19],c5[18],c4[29],s6[18],c6[18]);
full_adder f247(s5[20],c5[19],c4[30],s6[19],c6[19]);
full_adder f248(s5[21],c5[20],c4[31],s6[20],c6[20]);
full_adder f249(s5[22],c5[21],c4[32],s6[21],c6[21]);
full_adder f250(s5[23],c5[22],c4[33],s6[22],c6[22]);
full_adder f251(s4[35],c5[23],c4[34],s6[23],c6[23]);
half_adder f252(p15[15],c4[35],s6[24],c6[24]);
assign c=1'b0;
assign m[23:0]={s6[24],s6[23],s6[22],s6[21],s6[20],s6[19],s6[18],s6[17],s6[16],s6[15],s6[14],s6[13],s6[12],s6[11],s6[10],s6[9],s6[8],s6[7],s6[6],s6[5],s6[4],s6[3],s6[2],s6[1]};
assign n[23:0] ={c6[23],c6[22],c6[21],c6[20],c6[19],c6[18],c6[17],c6[16],c6[15],c6[14],c6[13], c6[12], c6[11],c6[10],c6[9],c6[8],c6[7],c6[6],c6[5],c6[4],c6[3],c6[2],c6[1],c6[0]};
ripple24 f253(m,n,c,s,cout);
half_adder f254(cout,c6[24],s6[25],c6[25]);
//////////final product
assign prod[31:0]={s6[25],s[23],s[22],s[21],s[20],s[19],s[18],s[17],s[16],s[15],s[14],s[13],
s[12],s[11],s[10],s[9],s[8],s[7],s[6],s[5],s[4],s[3],s[2],s[1],s[0],s6[0],s5[0],s4[0],s3[0],s2[0],s1
[0],p0[0]};
endmodule


