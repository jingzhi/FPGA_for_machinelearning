module innerproduct12(
input [6:0] xarray [0:80],
output[31:0] hidden
);
`include "theta12.h"
wire [31:0] r0;
wire [31:0] r1;
wire [31:0] r2;
wire [31:0] r3;
wire [31:0] r4;
wire [31:0] r5;
wire [31:0] r6;
wire [31:0] r7;
wire [31:0] r8;
wire [31:0] r9;
wire [31:0] r10;
wire [31:0] r11;
wire [31:0] r12;
wire [31:0] r13;
wire [31:0] r14;
wire [31:0] r15;
wire [31:0] r16;
wire [31:0] r17;
wire [31:0] r18;
wire [31:0] r19;
wire [31:0] r20;
wire [31:0] r21;
wire [31:0] r22;
wire [31:0] r23;
wire [31:0] r24;
wire [31:0] r25;
wire [31:0] r26;
wire [31:0] r27;
wire [31:0] r28;
wire [31:0] r29;
wire [31:0] r30;
wire [31:0] r31;
wire [31:0] r32;
wire [31:0] r33;
wire [31:0] r34;
wire [31:0] r35;
wire [31:0] r36;
wire [31:0] r37;
wire [31:0] r38;
wire [31:0] r39;
wire [31:0] r40;
wire [31:0] r41;
wire [31:0] r42;
wire [31:0] r43;
wire [31:0] r44;
wire [31:0] r45;
wire [31:0] r46;
wire [31:0] r47;
wire [31:0] r48;
wire [31:0] r49;
wire [31:0] r50;
wire [31:0] r51;
wire [31:0] r52;
wire [31:0] r53;
wire [31:0] r54;
wire [31:0] r55;
wire [31:0] r56;
wire [31:0] r57;
wire [31:0] r58;
wire [31:0] r59;
wire [31:0] r60;
wire [31:0] r61;
wire [31:0] r62;
wire [31:0] r63;
wire [31:0] r64;
wire [31:0] r65;
wire [31:0] r66;
wire [31:0] r67;
wire [31:0] r68;
wire [31:0] r69;
wire [31:0] r70;
wire [31:0] r71;
wire [31:0] r72;
wire [31:0] r73;
wire [31:0] r74;
wire [31:0] r75;
wire [31:0] r76;
wire [31:0] r77;
wire [31:0] r78;
wire [31:0] r79;
wire [31:0] r80;
assign hidden=r0+r1+r2+r3+r4+r5+r6+r7+r8+r9+r10+r11+r12+r13+r14+r15+r16+r17+r18+r19+r20+r21+r22+r23+r24+r25+r26+r27+r28+r29+r30+r31+r32+r33+r34+r35+r36+r37+r38+r39+r40+r41+r42+r43+r44+r45+r46+r47+r48+r49+r50+r51+r52+r53+r54+r55+r56+r57+r58+r59+r60+r61+r62+r63+r64+r65+r66+r67+r68+r69+r70+r71+r72+r73+r74+r75+r76+r77+r78+r79+r80;
assign r0=65536*THETA0;
assign r1=xarray[1]*THETA1;
assign r2=xarray[2]*THETA2;
assign r3=xarray[3]*THETA3;
assign r4=xarray[4]*THETA4;
assign r5=xarray[5]*THETA5;
assign r6=xarray[6]*THETA6;
assign r7=xarray[7]*THETA7;
assign r8=xarray[8]*THETA8;
assign r9=xarray[9]*THETA9;
assign r10=xarray[10]*THETA10;
assign r11=xarray[11]*THETA11;
assign r12=xarray[12]*THETA12;
assign r13=xarray[13]*THETA13;
assign r14=xarray[14]*THETA14;
assign r15=xarray[15]*THETA15;
assign r16=xarray[16]*THETA16;
assign r17=xarray[17]*THETA17;
assign r18=xarray[18]*THETA18;
assign r19=xarray[19]*THETA19;
assign r20=xarray[20]*THETA20;
assign r21=xarray[21]*THETA21;
assign r22=xarray[22]*THETA22;
assign r23=xarray[23]*THETA23;
assign r24=xarray[24]*THETA24;
assign r25=xarray[25]*THETA25;
assign r26=xarray[26]*THETA26;
assign r27=xarray[27]*THETA27;
assign r28=xarray[28]*THETA28;
assign r29=xarray[29]*THETA29;
assign r30=xarray[30]*THETA30;
assign r31=xarray[31]*THETA31;
assign r32=xarray[32]*THETA32;
assign r33=xarray[33]*THETA33;
assign r34=xarray[34]*THETA34;
assign r35=xarray[35]*THETA35;
assign r36=xarray[36]*THETA36;
assign r37=xarray[37]*THETA37;
assign r38=xarray[38]*THETA38;
assign r39=xarray[39]*THETA39;
assign r40=xarray[40]*THETA40;
assign r41=xarray[41]*THETA41;
assign r42=xarray[42]*THETA42;
assign r43=xarray[43]*THETA43;
assign r44=xarray[44]*THETA44;
assign r45=xarray[45]*THETA45;
assign r46=xarray[46]*THETA46;
assign r47=xarray[47]*THETA47;
assign r48=xarray[48]*THETA48;
assign r49=xarray[49]*THETA49;
assign r50=xarray[50]*THETA50;
assign r51=xarray[51]*THETA51;
assign r52=xarray[52]*THETA52;
assign r53=xarray[53]*THETA53;
assign r54=xarray[54]*THETA54;
assign r55=xarray[55]*THETA55;
assign r56=xarray[56]*THETA56;
assign r57=xarray[57]*THETA57;
assign r58=xarray[58]*THETA58;
assign r59=xarray[59]*THETA59;
assign r60=xarray[60]*THETA60;
assign r61=xarray[61]*THETA61;
assign r62=xarray[62]*THETA62;
assign r63=xarray[63]*THETA63;
assign r64=xarray[64]*THETA64;
assign r65=xarray[65]*THETA65;
assign r66=xarray[66]*THETA66;
assign r67=xarray[67]*THETA67;
assign r68=xarray[68]*THETA68;
assign r69=xarray[69]*THETA69;
assign r70=xarray[70]*THETA70;
assign r71=xarray[71]*THETA71;
assign r72=xarray[72]*THETA72;
assign r73=xarray[73]*THETA73;
assign r74=xarray[74]*THETA74;
assign r75=xarray[75]*THETA75;
assign r76=xarray[76]*THETA76;
assign r77=xarray[77]*THETA77;
assign r78=xarray[78]*THETA78;
assign r79=xarray[79]*THETA79;
assign r80=xarray[80]*THETA80;
endmodule
