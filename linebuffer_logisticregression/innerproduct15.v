module innerproduct15(
input  [31:0] xarray [0:40],
output  [31:0] hprime
);
`include "theta15.h"
wire  [31:0] r0;
wire  [31:0] r1;
wire  [31:0] r2;
wire  [31:0] r3;
wire  [31:0] r4;
wire  [31:0] r5;
wire  [31:0] r6;
wire  [31:0] r7;
wire  [31:0] r8;
wire  [31:0] r9;
wire  [31:0] r10;
wire  [31:0] r11;
wire  [31:0] r12;
wire  [31:0] r13;
wire  [31:0] r14;
wire  [31:0] r15;
wire  [31:0] r16;
wire  [31:0] r17;
wire  [31:0] r18;
wire  [31:0] r19;
wire  [31:0] r20;
wire  [31:0] r21;
wire  [31:0] r22;
wire  [31:0] r23;
wire  [31:0] r24;
wire  [31:0] r25;
wire  [31:0] r26;
wire  [31:0] r27;
wire  [31:0] r28;
wire  [31:0] r29;
wire  [31:0] r30;
wire  [31:0] r31;
wire  [31:0] r32;
wire  [31:0] r33;
wire  [31:0] r34;
wire  [31:0] r35;
wire  [31:0] r36;
wire  [31:0] r37;
wire  [31:0] r38;
wire  [31:0] r39;
wire  [31:0] r40;

assign hprime=r0+r1+r2+r3+r4+r5+r6+r7+r8+r9+r10+r11+r12+r13+r14+r15+r16+r17+r18+r19+r20+r21+r22+r23+r24+r25+r26+r27+r28+r29+r30+r31+r32+r33+r34+r35+r36+r37+r38+r39+r40;
assign r0=THETA0;
assign r1=0;
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
endmodule
