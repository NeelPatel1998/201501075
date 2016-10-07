`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Cospaty: 
// Etgiteer: 
// 
// Create Date:    20:09:04 10/07/2016 
// Design name: 
// module name:    RREF 
// Project name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additiotal Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RREF(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
				b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44,
				i00,i01,i02,i03,i04,i10,i11,i12,i13,i14,i20,i21,i22,i23,i24,i30,i31,i32,i33,i34,i40,i41,i42,i43,i44);
				
input [31:0] a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
				 b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44;
output [31:0] i00,i01,i02,i03,i04,i10,i11,i12,i13,i14,i20,i21,i22,i23,i24,i30,i31,i32,i33,i34,i40,i41,i42,i43,i44;

wire [31:0] v00,v01,v02,v03,v04,v10,v11,v12,v13,v14,v20,v21,v22,v23,v24,v30,v31,v32,v33,v34,v40,v41,v42,v43,v44;
wire [31:0] w00,w01,w02,w03,w04,w10,w11,w12,w13,w14,w20,w21,w22,w23,w24,w30,w31,w32,w33,w34,w40,w41,w42,w43,w44;
wire [31:0] x00,x01,x02,x03,x04,x10,x11,x12,x13,x14,x20,x21,x22,x23,x24,x30,x31,x32,x33,x34,x40,x41,x42,x43,x44;
wire [31:0] y00,y01,y02,y03,y04,y10,y11,y12,y13,y14,y20,y21,y22,y23,y24,y30,y31,y32,y33,y34,y40,y41,y42,y43,y44;
wire [31:0] z00,z01,z02,z03,z04,z10,z11,z12,z13,z14,z20,z21,z22,z23,z24,z30,z31,z32,z33,z34,z40,z41,z42,z43,z44;
 
wire [31:0] p00,p01,p02,p03,p04,p10,p11,p12,p13,p14,p20,p21,p22,p23,p24,p30,p31,p32,p33,p34,p40,p41,p42,p43,p44;
wire [31:0] q00,q01,q02,q03,q04,q10,q11,q12,q13,q14,q20,q21,q22,q23,q24,q30,q31,q32,q33,q34,q40,q41,q42,q43,q44;
wire [31:0] r00,r01,r02,r03,r04,r10,r11,r12,r13,r14,r20,r21,r22,r23,r24,r30,r31,r32,r33,r34,r40,r41,r42,r43,r44;
wire [31:0] s00,s01,s02,s03,s04,s10,s11,s12,s13,s14,s20,s21,s22,s23,s24,s30,s31,s32,s33,s34,s40,s41,s42,s43,s44;
wire [31:0] t00,t01,t02,t03,t04,t10,t11,t12,t13,t14,t20,t21,t22,t23,t24,t30,t31,t32,t33,t34,t40,t41,t42,t43,t44;
	  
wire [31:0] d1;

division inst1(a10,a00,d1); 
assign p10 = a10 - d1*a00;
assign p11 = a11 - d1*a01;
assign p12 = a12 - d1*a02;
assign p13 = a13 - d1*a03;
assign p14 = a14 - d1*a04;

assign v10 = b10 - d1*b00;
assign v11 = b11 - d1*b01;
assign v12 = b12 - d1*b02;
assign v13 = b13 - d1*b03;
assign v14 = b14 - d1*b04;

/////////////////////////////////////////////////
wire [31:0] d2;

division inst2(a20,a00,d2);
assign p20 = a20 - d2*a00;
assign p21 = a21 - d2*a01;
assign p22 = a22 - d2*a02;
assign p23 = a23 - d2*a03;
assign p24 = a24 - d2*a04;

assign v20 = b20 - d2*b00;
assign v21 = b21 - d2*b01;
assign v22 = b22 - d2*b02;
assign v23 = b23 - d2*b03;
assign v24 = b24 - d2*b04;

/////////////////////////////////////////////////
wire [31:0] d3;

division inst3(a30,a00,d3);
assign p30 = a30 - d3*a00;
assign p31 = a31 - d3*a01;
assign p32 = a32 - d3*a02;
assign p33 = a33 - d3*a03;
assign p34 = a34 - d3*a04;

assign v30 = b30 - d3*b00;
assign v31 = b31 - d3*b01;
assign v32 = b32 - d3*b02;
assign v33 = b33 - d3*b03;
assign v34 = b34 - d3*b04;

/////////////////////////////////////////////////
wire [31:0] d4;

division inst4(a40,a00,d4);
assign p40 = a40 - d4*a00;
assign p41 = a41 - d4*a01;
assign p42 = a42 - d4*a02;
assign p43 = a43 - d4*a03;
assign p44 = a44 - d4*a04;

assign v40 = b40 - d4*b00;
assign v41 = b41 - d4*b01;
assign v42 = b42 - d4*b02;
assign v43 = b43 - d4*b03;
assign v44 = b44 - d4*b04;

/////////////////////////////////////////////////
division inst5(a00,a00,p00);
division inst6(a01,a00,p01);
division inst7(a02,a00,p02);
division inst8(a03,a00,p03);
division inst9(a04,a00,p04);

division its5(b00,a00,v00);
division its6(b01,a00,v01);
division its7(b02,a00,v02);
division its8(b03,a00,v03);
division its9(b04,a00,v04);

/////////////////////////////////////////////////
wire [31:0] d5;

division inst10(p21,p11,d5);
assign q20 = p20 - d5*p10;
assign q21 = p21 - d5*p11;
assign q22 = p22 - d5*p12;
assign q23 = p23 - d5*p13;
assign q24 = p24 - d5*p14;

assign w20 = v20 - d5*v10;
assign w21 = v21 - d5*v11;
assign w22 = v22 - d5*v12;
assign w23 = v23 - d5*v13;
assign w24 = v24 - d5*v14;
/////////////////////////////////////////////////
wire [31:0] d6;

division inst11(p31,p11,d6);
assign q30 = p30 - d6*p10;
assign q31 = p31 - d6*p11;
assign q32 = p32 - d6*p12;
assign q33 = p33 - d6*p13;
assign q34 = p34 - d6*p14;

assign w30 = v30 - d6*v10;
assign w31 = v31 - d6*v11;
assign w32 = v32 - d6*v12;
assign w33 = v33 - d6*v13;
assign w34 = v34 - d6*v14;
/////////////////////////////////////////////////
wire [31:0] d7;

division inst12(p41,p11,d7);
assign q40 = p40 - d7*p10;
assign q41 = p41 - d7*p11;
assign q42 = p42 - d7*p12;
assign q43 = p43 - d7*p13;
assign q44 = p44 - d7*p14;

assign w40 = v40 - d7*v10;
assign w41 = v41 - d7*v11;
assign w42 = v42 - d7*v12;
assign w43 = v43 - d7*v13;
assign w44 = v44 - d7*v14;

/////////////////////////////////////////////////
division inst13(p10,p11,q10);
division inst14(p11,p11,q11);
division inst15(p12,p11,q12);
division inst16(p13,p11,q13);
division inst17(p14,p11,q14);

division its13(v10,p11,w10);
division its14(v11,p11,w11);
division its15(v12,p11,w12);
division its16(v13,p11,w13);
division its17(v14,p11,w14);

/////////////////////////////////////////////////
wire [31:0] d8;

division inst18(q32,q22,d8);
assign r30 = q30 - d8*q20;
assign r31 = q31 - d8*q21;
assign r32 = q32 - d8*q22;
assign r33 = q33 - d8*q23;
assign r34 = q34 - d8*q24;

assign x30 = w30 - d8*w20;
assign x31 = w31 - d8*w21;
assign x32 = w32 - d8*w22;
assign x33 = w33 - d8*w23;
assign x34 = w34 - d8*w24;

/////////////////////////////////////////////////
wire [31:0] d9;

division inst19(q42,q22,d9);
assign r40 = q40 - d9*q20;
assign r41 = q41 - d9*q21;
assign r42 = q42 - d9*q22;
assign r43 = q43 - d9*q23;
assign r44 = q44 - d9*q24;

assign x40 = w40 - d9*w20;
assign x41 = w41 - d9*w21;
assign x42 = w42 - d9*w22;
assign x43 = w43 - d9*w23;
assign x44 = w44 - d9*w24;

/////////////////////////////////////////////////
division inst20(q20,q22,r20);
division inst21(q21,q22,r21);
division inst22(q22,q22,r22);
division inst23(q23,q22,r23);
division inst24(q24,q24,r24);

division its20(w20,q22,x20);
division its21(w21,q22,x21);
division its22(w22,q22,x22);
division its23(w23,q22,x23);
division its24(w24,q24,x24);

/////////////////////////////////////////////////
wire [31:0] d10;

division inst25(r43,r33,d10);
assign s40 = r40 - d10*r30;
assign s41 = r41 - d10*r31;
assign s42 = r42 - d10*r32;
assign s43 = r43 - d10*r33;
assign s44 = r44 - d10*r34;

assign y40 = x40 - d10*x30;
assign y41 = x41 - d10*x31;
assign y42 = x42 - d10*x32;
assign y43 = x43 - d10*x33;
assign y44 = x44 - d10*x34;
/////////////////////////////////////////////////
division inst26(r30,r33,s30);
division inst27(r31,r33,s31);
division inst28(r32,r33,s32);
division inst29(r33,r33,s33);
division inst30(r34,r33,s34);

division its26(x30,r33,y30);
division its27(x31,r33,y31);
division its28(x32,r33,y32);
division its29(x33,r33,y33);
division its30(x34,r33,y34);

/////////////////////////////////////////////////
division inst31(s40,s44,t40);
division inst32(s41,s44,t41);
division inst33(s42,s44,t42);
division inst34(s43,s44,t43);
division inst35(s44,s44,t44);

division its31(y40,s44,z40);
division its32(y41,s44,z41);
division its33(y42,s44,z42);
division its34(y43,s44,z43);
division its35(y44,s44,z44);

/////////////////////////////////////////////////
wire [31:0] d11;

division inst36(s34,t44,d11);
assign t30 = s30 - d11*t40;
assign t31 = s31 - d11*t41;
assign t32 = s32 - d11*t42;
assign t33 = s33 - d11*t43;
assign t34 = s34 - d11*t44;

assign z30 = y30 - d11*z40;
assign z31 = y31 - d11*z41;
assign z32 = y32 - d11*z42;
assign z33 = y33 - d11*z43;
assign z34 = y34 - d11*z44;

/////////////////////////////////////////////////
wire [31:0] d12;

division inst37(r24,t44,d12);
assign t20 = r20 - d12*t40;
assign t21 = r21 - d12*t41;
assign t22 = r22 - d12*t42;
assign t23 = r23 - d12*t43;
assign t24 = r24 - d12*t44;

assign z20 = x20 - d12*z40;
assign z21 = x21 - d12*z41;
assign z22 = x22 - d12*z42;
assign z23 = x23 - d12*z43;
assign z24 = x24 - d12*z44;

/////////////////////////////////////////////////
wire [31:0] d13;

division inst38(q14,t44,d13);
assign t10 = q10 - d13*t40;
assign t11 = q11 - d13*t41;
assign t12 = q12 - d13*t42;
assign t13 = q12 - d13*t43;
assign t14 = q12 - d13*t44;

assign z10 = w10 - d13*z40;
assign z11 = w11 - d13*z41;
assign z12 = w12 - d13*z42;
assign z13 = w12 - d13*z43;
assign z14 = w12 - d13*z44;

/////////////////////////////////////////////////
wire [31:0] d14;

division inst39(p04,t44,d14);
assign t00 = p00 - d14*t40;
assign t01 = p01 - d14*t41;
assign t02 = p02 - d14*t42;
assign t03 = p03 - d14*t43;
assign t04 = p04 - d14*t44;

assign z00 = v00 - d14*z40;
assign z01 = v01 - d14*z41;
assign z02 = v02 - d14*z42;
assign z03 = v03 - d14*z43;
assign z04 = v04 - d14*z44;

/////////////////////////////////////////////////
wire [31:0] d15;

division inst40(t23,t33,d15);
assign s20 = t20 - d15*t30;
assign s21 = t21 - d15*t31;
assign s22 = t22 - d15*t32;
assign s23 = t23 - d15*t33;
assign s24 = t24 - d15*t34;

assign y20 = z20 - d15*z30;
assign y21 = z21 - d15*z31;
assign y22 = z22 - d15*z32;
assign y23 = z23 - d15*z33;
assign y24 = z24 - d15*z34;

/////////////////////////////////////////////////
wire [31:0] d16;

division inst41(t13,t33,d16);
assign s10 = t10 - d16*t30;
assign s11 = t11 - d16*t31;
assign s12 = t12 - d16*t32;
assign s13 = t13 - d16*t33;
assign s14 = t14 - d16*t34;

assign y10 = z10 - d16*z30;
assign y11 = z11 - d16*z31;
assign y12 = z12 - d16*z32;
assign y13 = z13 - d16*z33;
assign y14 = z14 - d16*z34;

/////////////////////////////////////////////////
wire [31:0] d17;

division inst42(t03,t33,d17);
assign s00 = t00 - d17*t30;
assign s01 = t01 - d17*t31;
assign s02 = t02 - d17*t32;
assign s03 = t03 - d17*t33;
assign s04 = t04 - d17*t34;

assign y00 = z00 - d17*z30;
assign y01 = z01 - d17*z31;
assign y02 = z02 - d17*z32;
assign y03 = z03 - d17*z33;
assign y04 = z04 - d17*z34;

/////////////////////////////////////////////////
wire [31:0] d18;

division inst43(s12,s22,d18);
assign r10 = s10 - d18*s20;
assign r11 = s11 - d18*s21;
assign r12 = s12 - d18*s22;
assign r13 = s13 - d18*s23;
assign r14 = s14 - d18*s24;

assign x10 = y10 - d18*y20;
assign x11 = y11 - d18*y21;
assign x12 = y12 - d18*y22;
assign x13 = y13 - d18*y23;
assign x14 = y14 - d18*y24;

/////////////////////////////////////////////////
wire [31:0] d19;

division inst44(s02,s22,d19);
assign r00 = s00 - d19*s20;
assign r01 = s01 - d19*s21;
assign r02 = s02 - d19*s22;
assign r03 = s03 - d19*s23;
assign r04 = s04 - d19*s24;

assign x00 = y00 - d19*y20;
assign x01 = y01 - d19*y21;
assign x02 = y02 - d19*y22;
assign x03 = y03 - d19*y23;
assign x04 = y04 - d19*y24;

/////////////////////////////////////////////////
wire [31:0] d20;

division inst45(r01,r11,d20);
assign q00 = r00 - d20*r10;
assign q01 = r01 - d20*r11;
assign q02 = r02 - d20*r12;
assign q03 = r03 - d20*r13;
assign q04 = r04 - d20*r14;

assign w00 = x00 - d20*x10;
assign w01 = x01 - d20*x11;
assign w02 = x02 - d20*x12;
assign w03 = x03 - d20*x13;
assign w04 = x04 - d20*x14;

/////////////////////////////////////////////////

assign i00 = w00;
assign i01 = w01;
assign i02 = w02;
assign i03 = w03;
assign i04 = w04;

assign i10 = x10;
assign i11 = x11;
assign i12 = x12;
assign i13 = x13;
assign i14 = x14;

assign i20 = y20;
assign i21 = y21;
assign i22 = y22;
assign i23 = y23;
assign i24 = y24;

assign i30 = z30;
assign i31 = z31;
assign i32 = z32;
assign i33 = z33;
assign i34 = z34;

assign i40 = z40;
assign i41 = z41;
assign i42 = z42;
assign i43 = z43;
assign i44 = z44;
endmodule

