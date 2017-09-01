

module sigmoid(
	input  [31:0] hprimearray[0:15],
	output  [31:0] harray[0:15]
);
parameter  step=24;
parameter  a1=64; parameter  b1=128;
parameter  a2=64; parameter  b2=128;
parameter  a3=63; parameter  b3=128;
parameter  a4=62; parameter  b4=128;
parameter  a5=61; parameter  b5=129;
parameter  a6=60; parameter  b6=129;
parameter  a7=58; parameter  b7=130;
parameter  a8=57; parameter  b8=131;
parameter  a9=55; parameter  b9=133;
parameter  a10=53; parameter  b10=134;
parameter  a11=51; parameter  b11=136;
parameter  a12=48; parameter  b12=139;
parameter  a13=46; parameter  b13=141;
parameter  a14=44; parameter  b14=144;
parameter  a15=42; parameter  b15=147;
parameter  a16=39; parameter  b16=150;
parameter  a17=37; parameter  b17=154;
parameter  a18=35; parameter  b18=157;
parameter  a19=33; parameter  b19=161;
parameter  a20=31; parameter  b20=165;
parameter  a21=29; parameter  b21=169;
parameter  a22=27; parameter  b22=172;
parameter  a23=25; parameter  b23=176;
parameter  a24=23; parameter  b24=180;
parameter  a25=21; parameter  b25=184;
parameter  a26=20; parameter  b26=187;
parameter  a27=18; parameter  b27=191;
parameter  a28=17; parameter  b28=195;
parameter  a29=15; parameter  b29=198;
parameter  a30=14; parameter  b30=201;
parameter  a31=13; parameter  b31=205;
parameter  a32=12; parameter  b32=208;

wire[31:0] abs0;
wire[31:0] abs1;
wire[31:0] abs2;
wire[31:0] abs3;
wire[31:0] abs4;
wire[31:0] abs5;
wire[31:0] abs6;
wire[31:0] abs7;
wire[31:0] abs8;
wire[31:0] abs9;
wire[31:0] abs10;
wire[31:0] abs11;
wire[31:0] abs12;
wire[31:0] abs13;
wire[31:0] abs14;
wire[31:0] abs15;
assign abs0=(hprimearray[0]<0)?(-hprimearray[0]):hprimearray[0];
assign abs1=(hprimearray[1]<0)?(-hprimearray[1]):hprimearray[1];
assign abs2=(hprimearray[2]<0)?(-hprimearray[2]):hprimearray[2];
assign abs3=(hprimearray[3]<0)?(-hprimearray[3]):hprimearray[3];
assign abs4=(hprimearray[4]<0)?(-hprimearray[4]):hprimearray[4];
assign abs5=(hprimearray[5]<0)?(-hprimearray[5]):hprimearray[5];
assign abs6=(hprimearray[6]<0)?(-hprimearray[6]):hprimearray[6];
assign abs7=(hprimearray[7]<0)?(-hprimearray[7]):hprimearray[7];
assign abs8=(hprimearray[8]<0)?(-hprimearray[8]):hprimearray[8];
assign abs9=(hprimearray[9]<0)?(-hprimearray[9]):hprimearray[9];
assign abs10=(hprimearray[10]<0)?(-hprimearray[10]):hprimearray[10];
assign abs11=(hprimearray[11]<0)?(-hprimearray[11]):hprimearray[11];
assign abs12=(hprimearray[12]<0)?(-hprimearray[12]):hprimearray[12];
assign abs13=(hprimearray[13]<0)?(-hprimearray[13]):hprimearray[13];
assign abs14=(hprimearray[14]<0)?(-hprimearray[14]):hprimearray[14];
assign abs15=(hprimearray[15]<0)?(-hprimearray[15]):hprimearray[15];
//-------------class 0---------------
always @(*) begin
if(abs0>step*32)begin harray[0]<=65536;end
else if(abs0<step*2) begin  harray[0]<=abs0*a2+b2;end
else if(abs0<step*3) begin  harray[0]<=abs0*a3+b3;end
else if(abs0<step*4) begin  harray[0]<=abs0*a4+b4;end
else if(abs0<step*5) begin  harray[0]<=abs0*a5+b5;end
else if(abs0<step*6) begin  harray[0]<=abs0*a6+b6;end
else if(abs0<step*7) begin  harray[0]<=abs0*a7+b7;end
else if(abs0<step*8) begin  harray[0]<=abs0*a8+b8;end
else if(abs0<step*9) begin  harray[0]<=abs0*a9+b9;end
else if(abs0<step*10) begin  harray[0]<=abs0*a10+b10;end
else if(abs0<step*11) begin  harray[0]<=abs0*a11+b11;end
else if(abs0<step*12) begin  harray[0]<=abs0*a12+b12;end
else if(abs0<step*13) begin  harray[0]<=abs0*a13+b13;end
else if(abs0<step*14) begin  harray[0]<=abs0*a14+b14;end
else if(abs0<step*15) begin  harray[0]<=abs0*a15+b15;end
else if(abs0<step*16) begin  harray[0]<=abs0*a16+b16;end
else if(abs0<step*17) begin  harray[0]<=abs0*a17+b17;end
else if(abs0<step*18) begin  harray[0]<=abs0*a18+b18;end
else if(abs0<step*19) begin  harray[0]<=abs0*a19+b19;end
else if(abs0<step*20) begin  harray[0]<=abs0*a20+b20;end
else if(abs0<step*21) begin  harray[0]<=abs0*a21+b21;end
else if(abs0<step*22) begin  harray[0]<=abs0*a22+b22;end
else if(abs0<step*23) begin  harray[0]<=abs0*a23+b23;end
else if(abs0<step*24) begin  harray[0]<=abs0*a24+b24;end
else if(abs0<step*25) begin  harray[0]<=abs0*a25+b25;end
else if(abs0<step*26) begin  harray[0]<=abs0*a26+b26;end
else if(abs0<step*27) begin  harray[0]<=abs0*a27+b27;end
else if(abs0<step*28) begin  harray[0]<=abs0*a28+b28;end
else if(abs0<step*29) begin  harray[0]<=abs0*a29+b29;end
else if(abs0<step*30) begin  harray[0]<=abs0*a30+b30;end
else if(abs0<step*31) begin  harray[0]<=abs0*a31+b31;end
else if(abs0<step*32) begin  harray[0]<=abs0*a32+b32;end
if(hprimearray[0]<0) harray[0]<=-harray[0];
end 
//-------------class 1---------------
always @(*) begin
if(abs1>step*32)begin harray[1]<=65536;end
else if(abs1<step*2) begin  harray[1]<=abs1*a2+b2;end
else if(abs1<step*3) begin  harray[1]<=abs1*a3+b3;end
else if(abs1<step*4) begin  harray[1]<=abs1*a4+b4;end
else if(abs1<step*5) begin  harray[1]<=abs1*a5+b5;end
else if(abs1<step*6) begin  harray[1]<=abs1*a6+b6;end
else if(abs1<step*7) begin  harray[1]<=abs1*a7+b7;end
else if(abs1<step*8) begin  harray[1]<=abs1*a8+b8;end
else if(abs1<step*9) begin  harray[1]<=abs1*a9+b9;end
else if(abs1<step*10) begin  harray[1]<=abs1*a10+b10;end
else if(abs1<step*11) begin  harray[1]<=abs1*a11+b11;end
else if(abs1<step*12) begin  harray[1]<=abs1*a12+b12;end
else if(abs1<step*13) begin  harray[1]<=abs1*a13+b13;end
else if(abs1<step*14) begin  harray[1]<=abs1*a14+b14;end
else if(abs1<step*15) begin  harray[1]<=abs1*a15+b15;end
else if(abs1<step*16) begin  harray[1]<=abs1*a16+b16;end
else if(abs1<step*17) begin  harray[1]<=abs1*a17+b17;end
else if(abs1<step*18) begin  harray[1]<=abs1*a18+b18;end
else if(abs1<step*19) begin  harray[1]<=abs1*a19+b19;end
else if(abs1<step*20) begin  harray[1]<=abs1*a20+b20;end
else if(abs1<step*21) begin  harray[1]<=abs1*a21+b21;end
else if(abs1<step*22) begin  harray[1]<=abs1*a22+b22;end
else if(abs1<step*23) begin  harray[1]<=abs1*a23+b23;end
else if(abs1<step*24) begin  harray[1]<=abs1*a24+b24;end
else if(abs1<step*25) begin  harray[1]<=abs1*a25+b25;end
else if(abs1<step*26) begin  harray[1]<=abs1*a26+b26;end
else if(abs1<step*27) begin  harray[1]<=abs1*a27+b27;end
else if(abs1<step*28) begin  harray[1]<=abs1*a28+b28;end
else if(abs1<step*29) begin  harray[1]<=abs1*a29+b29;end
else if(abs1<step*30) begin  harray[1]<=abs1*a30+b30;end
else if(abs1<step*31) begin  harray[1]<=abs1*a31+b31;end
else if(abs1<step*32) begin  harray[1]<=abs1*a32+b32;end
if(hprimearray[1]<0) harray[1]<=-harray[1];
end
//-------------class 2---------------
always @(*) begin
if(abs2>step*32)begin harray[2]<=65536;end
else if(abs2<step*2) begin  harray[2]<=abs2*a2+b2;end
else if(abs2<step*3) begin  harray[2]<=abs2*a3+b3;end
else if(abs2<step*4) begin  harray[2]<=abs2*a4+b4;end
else if(abs2<step*5) begin  harray[2]<=abs2*a5+b5;end
else if(abs2<step*6) begin  harray[2]<=abs2*a6+b6;end
else if(abs2<step*7) begin  harray[2]<=abs2*a7+b7;end
else if(abs2<step*8) begin  harray[2]<=abs2*a8+b8;end
else if(abs2<step*9) begin  harray[2]<=abs2*a9+b9;end
else if(abs2<step*10) begin  harray[2]<=abs2*a10+b10;end
else if(abs2<step*11) begin  harray[2]<=abs2*a11+b11;end
else if(abs2<step*12) begin  harray[2]<=abs2*a12+b12;end
else if(abs2<step*13) begin  harray[2]<=abs2*a13+b13;end
else if(abs2<step*14) begin  harray[2]<=abs2*a14+b14;end
else if(abs2<step*15) begin  harray[2]<=abs2*a15+b15;end
else if(abs2<step*16) begin  harray[2]<=abs2*a16+b16;end
else if(abs2<step*17) begin  harray[2]<=abs2*a17+b17;end
else if(abs2<step*18) begin  harray[2]<=abs2*a18+b18;end
else if(abs2<step*19) begin  harray[2]<=abs2*a19+b19;end
else if(abs2<step*20) begin  harray[2]<=abs2*a20+b20;end
else if(abs2<step*21) begin  harray[2]<=abs2*a21+b21;end
else if(abs2<step*22) begin  harray[2]<=abs2*a22+b22;end
else if(abs2<step*23) begin  harray[2]<=abs2*a23+b23;end
else if(abs2<step*24) begin  harray[2]<=abs2*a24+b24;end
else if(abs2<step*25) begin  harray[2]<=abs2*a25+b25;end
else if(abs2<step*26) begin  harray[2]<=abs2*a26+b26;end
else if(abs2<step*27) begin  harray[2]<=abs2*a27+b27;end
else if(abs2<step*28) begin  harray[2]<=abs2*a28+b28;end
else if(abs2<step*29) begin  harray[2]<=abs2*a29+b29;end
else if(abs2<step*30) begin  harray[2]<=abs2*a30+b30;end
else if(abs2<step*31) begin  harray[2]<=abs2*a31+b31;end
else if(abs2<step*32) begin  harray[2]<=abs2*a32+b32;end
if(hprimearray[2]<0) harray[2]<=-harray[2];
end 
//-------------class 3---------------
always @(*) begin
if(abs3>step*32)begin harray[3]<=65536;end
else if(abs3<step*2) begin  harray[3]<=abs3*a2+b2;end
else if(abs3<step*3) begin  harray[3]<=abs3*a3+b3;end
else if(abs3<step*4) begin  harray[3]<=abs3*a4+b4;end
else if(abs3<step*5) begin  harray[3]<=abs3*a5+b5;end
else if(abs3<step*6) begin  harray[3]<=abs3*a6+b6;end
else if(abs3<step*7) begin  harray[3]<=abs3*a7+b7;end
else if(abs3<step*8) begin  harray[3]<=abs3*a8+b8;end
else if(abs3<step*9) begin  harray[3]<=abs3*a9+b9;end
else if(abs3<step*10) begin  harray[3]<=abs3*a10+b10;end
else if(abs3<step*11) begin  harray[3]<=abs3*a11+b11;end
else if(abs3<step*12) begin  harray[3]<=abs3*a12+b12;end
else if(abs3<step*13) begin  harray[3]<=abs3*a13+b13;end
else if(abs3<step*14) begin  harray[3]<=abs3*a14+b14;end
else if(abs3<step*15) begin  harray[3]<=abs3*a15+b15;end
else if(abs3<step*16) begin  harray[3]<=abs3*a16+b16;end
else if(abs3<step*17) begin  harray[3]<=abs3*a17+b17;end
else if(abs3<step*18) begin  harray[3]<=abs3*a18+b18;end
else if(abs3<step*19) begin  harray[3]<=abs3*a19+b19;end
else if(abs3<step*20) begin  harray[3]<=abs3*a20+b20;end
else if(abs3<step*21) begin  harray[3]<=abs3*a21+b21;end
else if(abs3<step*22) begin  harray[3]<=abs3*a22+b22;end
else if(abs3<step*23) begin  harray[3]<=abs3*a23+b23;end
else if(abs3<step*24) begin  harray[3]<=abs3*a24+b24;end
else if(abs3<step*25) begin  harray[3]<=abs3*a25+b25;end
else if(abs3<step*26) begin  harray[3]<=abs3*a26+b26;end
else if(abs3<step*27) begin  harray[3]<=abs3*a27+b27;end
else if(abs3<step*28) begin  harray[3]<=abs3*a28+b28;end
else if(abs3<step*29) begin  harray[3]<=abs3*a29+b29;end
else if(abs3<step*30) begin  harray[3]<=abs3*a30+b30;end
else if(abs3<step*31) begin  harray[3]<=abs3*a31+b31;end
else if(abs3<step*32) begin  harray[3]<=abs3*a32+b32;end
if(hprimearray[3]<0) harray[3]<=-harray[3];
end 
//-------------class 4---------------
always @(*) begin
if(abs4>step*32)begin harray[4]<=65536;end
else if(abs4<step*2) begin  harray[4]<=abs4*a2+b2;end
else if(abs4<step*3) begin  harray[4]<=abs4*a3+b3;end
else if(abs4<step*4) begin  harray[4]<=abs4*a4+b4;end
else if(abs4<step*5) begin  harray[4]<=abs4*a5+b5;end
else if(abs4<step*6) begin  harray[4]<=abs4*a6+b6;end
else if(abs4<step*7) begin  harray[4]<=abs4*a7+b7;end
else if(abs4<step*8) begin  harray[4]<=abs4*a8+b8;end
else if(abs4<step*9) begin  harray[4]<=abs4*a9+b9;end
else if(abs4<step*10) begin  harray[4]<=abs4*a10+b10;end
else if(abs4<step*11) begin  harray[4]<=abs4*a11+b11;end
else if(abs4<step*12) begin  harray[4]<=abs4*a12+b12;end
else if(abs4<step*13) begin  harray[4]<=abs4*a13+b13;end
else if(abs4<step*14) begin  harray[4]<=abs4*a14+b14;end
else if(abs4<step*15) begin  harray[4]<=abs4*a15+b15;end
else if(abs4<step*16) begin  harray[4]<=abs4*a16+b16;end
else if(abs4<step*17) begin  harray[4]<=abs4*a17+b17;end
else if(abs4<step*18) begin  harray[4]<=abs4*a18+b18;end
else if(abs4<step*19) begin  harray[4]<=abs4*a19+b19;end
else if(abs4<step*20) begin  harray[4]<=abs4*a20+b20;end
else if(abs4<step*21) begin  harray[4]<=abs4*a21+b21;end
else if(abs4<step*22) begin  harray[4]<=abs4*a22+b22;end
else if(abs4<step*23) begin  harray[4]<=abs4*a23+b23;end
else if(abs4<step*24) begin  harray[4]<=abs4*a24+b24;end
else if(abs4<step*25) begin  harray[4]<=abs4*a25+b25;end
else if(abs4<step*26) begin  harray[4]<=abs4*a26+b26;end
else if(abs4<step*27) begin  harray[4]<=abs4*a27+b27;end
else if(abs4<step*28) begin  harray[4]<=abs4*a28+b28;end
else if(abs4<step*29) begin  harray[4]<=abs4*a29+b29;end
else if(abs4<step*30) begin  harray[4]<=abs4*a30+b30;end
else if(abs4<step*31) begin  harray[4]<=abs4*a31+b31;end
else if(abs4<step*32) begin  harray[4]<=abs4*a32+b32;end
if(hprimearray[4]<0) harray[4]<=-harray[4];
end 
//-------------class 5---------------
always @(*) begin
if(abs5>step*32)begin harray[5]<=65536;end
else if(abs5<step*2) begin  harray[5]<=abs5*a2+b2;end
else if(abs5<step*3) begin  harray[5]<=abs5*a3+b3;end
else if(abs5<step*4) begin  harray[5]<=abs5*a4+b4;end
else if(abs5<step*5) begin  harray[5]<=abs5*a5+b5;end
else if(abs5<step*6) begin  harray[5]<=abs5*a6+b6;end
else if(abs5<step*7) begin  harray[5]<=abs5*a7+b7;end
else if(abs5<step*8) begin  harray[5]<=abs5*a8+b8;end
else if(abs5<step*9) begin  harray[5]<=abs5*a9+b9;end
else if(abs5<step*10) begin  harray[5]<=abs5*a10+b10;end
else if(abs5<step*11) begin  harray[5]<=abs5*a11+b11;end
else if(abs5<step*12) begin  harray[5]<=abs5*a12+b12;end
else if(abs5<step*13) begin  harray[5]<=abs5*a13+b13;end
else if(abs5<step*14) begin  harray[5]<=abs5*a14+b14;end
else if(abs5<step*15) begin  harray[5]<=abs5*a15+b15;end
else if(abs5<step*16) begin  harray[5]<=abs5*a16+b16;end
else if(abs5<step*17) begin  harray[5]<=abs5*a17+b17;end
else if(abs5<step*18) begin  harray[5]<=abs5*a18+b18;end
else if(abs5<step*19) begin  harray[5]<=abs5*a19+b19;end
else if(abs5<step*20) begin  harray[5]<=abs5*a20+b20;end
else if(abs5<step*21) begin  harray[5]<=abs5*a21+b21;end
else if(abs5<step*22) begin  harray[5]<=abs5*a22+b22;end
else if(abs5<step*23) begin  harray[5]<=abs5*a23+b23;end
else if(abs5<step*24) begin  harray[5]<=abs5*a24+b24;end
else if(abs5<step*25) begin  harray[5]<=abs5*a25+b25;end
else if(abs5<step*26) begin  harray[5]<=abs5*a26+b26;end
else if(abs5<step*27) begin  harray[5]<=abs5*a27+b27;end
else if(abs5<step*28) begin  harray[5]<=abs5*a28+b28;end
else if(abs5<step*29) begin  harray[5]<=abs5*a29+b29;end
else if(abs5<step*30) begin  harray[5]<=abs5*a30+b30;end
else if(abs5<step*31) begin  harray[5]<=abs5*a31+b31;end
else if(abs5<step*32) begin  harray[5]<=abs5*a32+b32;end
if(hprimearray[5]<0) harray[5]<=-harray[5];
end
//-------------class 6---------------
always @(*) begin
if(abs6>step*32)begin harray[6]<=65536;end
else if(abs6<step*2) begin  harray[6]<=abs6*a2+b2;end
else if(abs6<step*3) begin  harray[6]<=abs6*a3+b3;end
else if(abs6<step*4) begin  harray[6]<=abs6*a4+b4;end
else if(abs6<step*5) begin  harray[6]<=abs6*a5+b5;end
else if(abs6<step*6) begin  harray[6]<=abs6*a6+b6;end
else if(abs6<step*7) begin  harray[6]<=abs6*a7+b7;end
else if(abs6<step*8) begin  harray[6]<=abs6*a8+b8;end
else if(abs6<step*9) begin  harray[6]<=abs6*a9+b9;end
else if(abs6<step*10) begin  harray[6]<=abs6*a10+b10;end
else if(abs6<step*11) begin  harray[6]<=abs6*a11+b11;end
else if(abs6<step*12) begin  harray[6]<=abs6*a12+b12;end
else if(abs6<step*13) begin  harray[6]<=abs6*a13+b13;end
else if(abs6<step*14) begin  harray[6]<=abs6*a14+b14;end
else if(abs6<step*15) begin  harray[6]<=abs6*a15+b15;end
else if(abs6<step*16) begin  harray[6]<=abs6*a16+b16;end
else if(abs6<step*17) begin  harray[6]<=abs6*a17+b17;end
else if(abs6<step*18) begin  harray[6]<=abs6*a18+b18;end
else if(abs6<step*19) begin  harray[6]<=abs6*a19+b19;end
else if(abs6<step*20) begin  harray[6]<=abs6*a20+b20;end
else if(abs6<step*21) begin  harray[6]<=abs6*a21+b21;end
else if(abs6<step*22) begin  harray[6]<=abs6*a22+b22;end
else if(abs6<step*23) begin  harray[6]<=abs6*a23+b23;end
else if(abs6<step*24) begin  harray[6]<=abs6*a24+b24;end
else if(abs6<step*25) begin  harray[6]<=abs6*a25+b25;end
else if(abs6<step*26) begin  harray[6]<=abs6*a26+b26;end
else if(abs6<step*27) begin  harray[6]<=abs6*a27+b27;end
else if(abs6<step*28) begin  harray[6]<=abs6*a28+b28;end
else if(abs6<step*29) begin  harray[6]<=abs6*a29+b29;end
else if(abs6<step*30) begin  harray[6]<=abs6*a30+b30;end
else if(abs6<step*31) begin  harray[6]<=abs6*a31+b31;end
else if(abs6<step*32) begin  harray[6]<=abs6*a32+b32;end
if(hprimearray[6]<0) harray[6]<=-harray[6];
end 
//-------------class 7---------------
always @(*) begin
if(abs7>step*32)begin harray[7]<=65536;end
else if(abs7<step*2) begin  harray[7]<=abs7*a2+b2;end
else if(abs7<step*3) begin  harray[7]<=abs7*a3+b3;end
else if(abs7<step*4) begin  harray[7]<=abs7*a4+b4;end
else if(abs7<step*5) begin  harray[7]<=abs7*a5+b5;end
else if(abs7<step*6) begin  harray[7]<=abs7*a6+b6;end
else if(abs7<step*7) begin  harray[7]<=abs7*a7+b7;end
else if(abs7<step*8) begin  harray[7]<=abs7*a8+b8;end
else if(abs7<step*9) begin  harray[7]<=abs7*a9+b9;end
else if(abs7<step*10) begin  harray[7]<=abs7*a10+b10;end
else if(abs7<step*11) begin  harray[7]<=abs7*a11+b11;end
else if(abs7<step*12) begin  harray[7]<=abs7*a12+b12;end
else if(abs7<step*13) begin  harray[7]<=abs7*a13+b13;end
else if(abs7<step*14) begin  harray[7]<=abs7*a14+b14;end
else if(abs7<step*15) begin  harray[7]<=abs7*a15+b15;end
else if(abs7<step*16) begin  harray[7]<=abs7*a16+b16;end
else if(abs7<step*17) begin  harray[7]<=abs7*a17+b17;end
else if(abs7<step*18) begin  harray[7]<=abs7*a18+b18;end
else if(abs7<step*19) begin  harray[7]<=abs7*a19+b19;end
else if(abs7<step*20) begin  harray[7]<=abs7*a20+b20;end
else if(abs7<step*21) begin  harray[7]<=abs7*a21+b21;end
else if(abs7<step*22) begin  harray[7]<=abs7*a22+b22;end
else if(abs7<step*23) begin  harray[7]<=abs7*a23+b23;end
else if(abs7<step*24) begin  harray[7]<=abs7*a24+b24;end
else if(abs7<step*25) begin  harray[7]<=abs7*a25+b25;end
else if(abs7<step*26) begin  harray[7]<=abs7*a26+b26;end
else if(abs7<step*27) begin  harray[7]<=abs7*a27+b27;end
else if(abs7<step*28) begin  harray[7]<=abs7*a28+b28;end
else if(abs7<step*29) begin  harray[7]<=abs7*a29+b29;end
else if(abs7<step*30) begin  harray[7]<=abs7*a30+b30;end
else if(abs7<step*31) begin  harray[7]<=abs7*a31+b31;end
else if(abs7<step*32) begin  harray[7]<=abs7*a32+b32;end
if(hprimearray[7]<0) harray[7]<=-harray[7];
end
//-------------class 8---------------
always @(*) begin
if(abs8>step*32)begin harray[8]<=65536;end
else if(abs8<step*2) begin  harray[8]<=abs8*a2+b2;end
else if(abs8<step*3) begin  harray[8]<=abs8*a3+b3;end
else if(abs8<step*4) begin  harray[8]<=abs8*a4+b4;end
else if(abs8<step*5) begin  harray[8]<=abs8*a5+b5;end
else if(abs8<step*6) begin  harray[8]<=abs8*a6+b6;end
else if(abs8<step*7) begin  harray[8]<=abs8*a7+b7;end
else if(abs8<step*8) begin  harray[8]<=abs8*a8+b8;end
else if(abs8<step*9) begin  harray[8]<=abs8*a9+b9;end
else if(abs8<step*10) begin  harray[8]<=abs8*a10+b10;end
else if(abs8<step*11) begin  harray[8]<=abs8*a11+b11;end
else if(abs8<step*12) begin  harray[8]<=abs8*a12+b12;end
else if(abs8<step*13) begin  harray[8]<=abs8*a13+b13;end
else if(abs8<step*14) begin  harray[8]<=abs8*a14+b14;end
else if(abs8<step*15) begin  harray[8]<=abs8*a15+b15;end
else if(abs8<step*16) begin  harray[8]<=abs8*a16+b16;end
else if(abs8<step*17) begin  harray[8]<=abs8*a17+b17;end
else if(abs8<step*18) begin  harray[8]<=abs8*a18+b18;end
else if(abs8<step*19) begin  harray[8]<=abs8*a19+b19;end
else if(abs8<step*20) begin  harray[8]<=abs8*a20+b20;end
else if(abs8<step*21) begin  harray[8]<=abs8*a21+b21;end
else if(abs8<step*22) begin  harray[8]<=abs8*a22+b22;end
else if(abs8<step*23) begin  harray[8]<=abs8*a23+b23;end
else if(abs8<step*24) begin  harray[8]<=abs8*a24+b24;end
else if(abs8<step*25) begin  harray[8]<=abs8*a25+b25;end
else if(abs8<step*26) begin  harray[8]<=abs8*a26+b26;end
else if(abs8<step*27) begin  harray[8]<=abs8*a27+b27;end
else if(abs8<step*28) begin  harray[8]<=abs8*a28+b28;end
else if(abs8<step*29) begin  harray[8]<=abs8*a29+b29;end
else if(abs8<step*30) begin  harray[8]<=abs8*a30+b30;end
else if(abs8<step*31) begin  harray[8]<=abs8*a31+b31;end
else if(abs8<step*32) begin  harray[8]<=abs8*a32+b32;end
if(hprimearray[8]<0) harray[8]<=-harray[8];
end
//-------------class 9---------------
always @(*) begin
if(abs9>step*32)begin harray[9]<=65536;end
else if(abs9<step*2) begin  harray[9]<=abs9*a2+b2;end
else if(abs9<step*3) begin  harray[9]<=abs9*a3+b3;end
else if(abs9<step*4) begin  harray[9]<=abs9*a4+b4;end
else if(abs9<step*5) begin  harray[9]<=abs9*a5+b5;end
else if(abs9<step*6) begin  harray[9]<=abs9*a6+b6;end
else if(abs9<step*7) begin  harray[9]<=abs9*a7+b7;end
else if(abs9<step*8) begin  harray[9]<=abs9*a8+b8;end
else if(abs9<step*9) begin  harray[9]<=abs9*a9+b9;end
else if(abs9<step*10) begin  harray[9]<=abs9*a10+b10;end
else if(abs9<step*11) begin  harray[9]<=abs9*a11+b11;end
else if(abs9<step*12) begin  harray[9]<=abs9*a12+b12;end
else if(abs9<step*13) begin  harray[9]<=abs9*a13+b13;end
else if(abs9<step*14) begin  harray[9]<=abs9*a14+b14;end
else if(abs9<step*15) begin  harray[9]<=abs9*a15+b15;end
else if(abs9<step*16) begin  harray[9]<=abs9*a16+b16;end
else if(abs9<step*17) begin  harray[9]<=abs9*a17+b17;end
else if(abs9<step*18) begin  harray[9]<=abs9*a18+b18;end
else if(abs9<step*19) begin  harray[9]<=abs9*a19+b19;end
else if(abs9<step*20) begin  harray[9]<=abs9*a20+b20;end
else if(abs9<step*21) begin  harray[9]<=abs9*a21+b21;end
else if(abs9<step*22) begin  harray[9]<=abs9*a22+b22;end
else if(abs9<step*23) begin  harray[9]<=abs9*a23+b23;end
else if(abs9<step*24) begin  harray[9]<=abs9*a24+b24;end
else if(abs9<step*25) begin  harray[9]<=abs9*a25+b25;end
else if(abs9<step*26) begin  harray[9]<=abs9*a26+b26;end
else if(abs9<step*27) begin  harray[9]<=abs9*a27+b27;end
else if(abs9<step*28) begin  harray[9]<=abs9*a28+b28;end
else if(abs9<step*29) begin  harray[9]<=abs9*a29+b29;end
else if(abs9<step*30) begin  harray[9]<=abs9*a30+b30;end
else if(abs9<step*31) begin  harray[9]<=abs9*a31+b31;end
else if(abs9<step*32) begin  harray[9]<=abs9*a32+b32;end
if(hprimearray[9]<0) harray[9]<=-harray[9];
end
//-------------class 10---------------
always @(*) begin
if(abs10>step*32)begin harray[10]<=65536;end
else if(abs10<step*2) begin  harray[10]<=abs10*a2+b2;end
else if(abs10<step*3) begin  harray[10]<=abs10*a3+b3;end
else if(abs10<step*4) begin  harray[10]<=abs10*a4+b4;end
else if(abs10<step*5) begin  harray[10]<=abs10*a5+b5;end
else if(abs10<step*6) begin  harray[10]<=abs10*a6+b6;end
else if(abs10<step*7) begin  harray[10]<=abs10*a7+b7;end
else if(abs10<step*8) begin  harray[10]<=abs10*a8+b8;end
else if(abs10<step*9) begin  harray[10]<=abs10*a9+b9;end
else if(abs10<step*10) begin  harray[10]<=abs10*a10+b10;end
else if(abs10<step*11) begin  harray[10]<=abs10*a11+b11;end
else if(abs10<step*12) begin  harray[10]<=abs10*a12+b12;end
else if(abs10<step*13) begin  harray[10]<=abs10*a13+b13;end
else if(abs10<step*14) begin  harray[10]<=abs10*a14+b14;end
else if(abs10<step*15) begin  harray[10]<=abs10*a15+b15;end
else if(abs10<step*16) begin  harray[10]<=abs10*a16+b16;end
else if(abs10<step*17) begin  harray[10]<=abs10*a17+b17;end
else if(abs10<step*18) begin  harray[10]<=abs10*a18+b18;end
else if(abs10<step*19) begin  harray[10]<=abs10*a19+b19;end
else if(abs10<step*20) begin  harray[10]<=abs10*a20+b20;end
else if(abs10<step*21) begin  harray[10]<=abs10*a21+b21;end
else if(abs10<step*22) begin  harray[10]<=abs10*a22+b22;end
else if(abs10<step*23) begin  harray[10]<=abs10*a23+b23;end
else if(abs10<step*24) begin  harray[10]<=abs10*a24+b24;end
else if(abs10<step*25) begin  harray[10]<=abs10*a25+b25;end
else if(abs10<step*26) begin  harray[10]<=abs10*a26+b26;end
else if(abs10<step*27) begin  harray[10]<=abs10*a27+b27;end
else if(abs10<step*28) begin  harray[10]<=abs10*a28+b28;end
else if(abs10<step*29) begin  harray[10]<=abs10*a29+b29;end
else if(abs10<step*30) begin  harray[10]<=abs10*a30+b30;end
else if(abs10<step*31) begin  harray[10]<=abs10*a31+b31;end
else if(abs10<step*32) begin  harray[10]<=abs10*a32+b32;end
if(hprimearray[10]<0) harray[10]<=-harray[10];
end
//-------------class 11---------------
always @(*) begin
if(abs11>step*32)begin harray[11]<=65536;end
else if(abs11<step*2) begin  harray[11]<=abs11*a2+b2;end
else if(abs11<step*3) begin  harray[11]<=abs11*a3+b3;end
else if(abs11<step*4) begin  harray[11]<=abs11*a4+b4;end
else if(abs11<step*5) begin  harray[11]<=abs11*a5+b5;end
else if(abs11<step*6) begin  harray[11]<=abs11*a6+b6;end
else if(abs11<step*7) begin  harray[11]<=abs11*a7+b7;end
else if(abs11<step*8) begin  harray[11]<=abs11*a8+b8;end
else if(abs11<step*9) begin  harray[11]<=abs11*a9+b9;end
else if(abs11<step*10) begin  harray[11]<=abs11*a10+b10;end
else if(abs11<step*11) begin  harray[11]<=abs11*a11+b11;end
else if(abs11<step*12) begin  harray[11]<=abs11*a12+b12;end
else if(abs11<step*13) begin  harray[11]<=abs11*a13+b13;end
else if(abs11<step*14) begin  harray[11]<=abs11*a14+b14;end
else if(abs11<step*15) begin  harray[11]<=abs11*a15+b15;end
else if(abs11<step*16) begin  harray[11]<=abs11*a16+b16;end
else if(abs11<step*17) begin  harray[11]<=abs11*a17+b17;end
else if(abs11<step*18) begin  harray[11]<=abs11*a18+b18;end
else if(abs11<step*19) begin  harray[11]<=abs11*a19+b19;end
else if(abs11<step*20) begin  harray[11]<=abs11*a20+b20;end
else if(abs11<step*21) begin  harray[11]<=abs11*a21+b21;end
else if(abs11<step*22) begin  harray[11]<=abs11*a22+b22;end
else if(abs11<step*23) begin  harray[11]<=abs11*a23+b23;end
else if(abs11<step*24) begin  harray[11]<=abs11*a24+b24;end
else if(abs11<step*25) begin  harray[11]<=abs11*a25+b25;end
else if(abs11<step*26) begin  harray[11]<=abs11*a26+b26;end
else if(abs11<step*27) begin  harray[11]<=abs11*a27+b27;end
else if(abs11<step*28) begin  harray[11]<=abs11*a28+b28;end
else if(abs11<step*29) begin  harray[11]<=abs11*a29+b29;end
else if(abs11<step*30) begin  harray[11]<=abs11*a30+b30;end
else if(abs11<step*31) begin  harray[11]<=abs11*a31+b31;end
else if(abs11<step*32) begin  harray[11]<=abs11*a32+b32;end
if(hprimearray[11]<0) harray[11]<=-harray[11];
end 
//-------------class 12---------------
always @(*) begin
if(abs12>step*32)begin harray[12]<=65536;end
else if(abs12<step*2) begin  harray[12]<=abs12*a2+b2;end
else if(abs12<step*3) begin  harray[12]<=abs12*a3+b3;end
else if(abs12<step*4) begin  harray[12]<=abs12*a4+b4;end
else if(abs12<step*5) begin  harray[12]<=abs12*a5+b5;end
else if(abs12<step*6) begin  harray[12]<=abs12*a6+b6;end
else if(abs12<step*7) begin  harray[12]<=abs12*a7+b7;end
else if(abs12<step*8) begin  harray[12]<=abs12*a8+b8;end
else if(abs12<step*9) begin  harray[12]<=abs12*a9+b9;end
else if(abs12<step*10) begin  harray[12]<=abs12*a10+b10;end
else if(abs12<step*11) begin  harray[12]<=abs12*a11+b11;end
else if(abs12<step*12) begin  harray[12]<=abs12*a12+b12;end
else if(abs12<step*13) begin  harray[12]<=abs12*a13+b13;end
else if(abs12<step*14) begin  harray[12]<=abs12*a14+b14;end
else if(abs12<step*15) begin  harray[12]<=abs12*a15+b15;end
else if(abs12<step*16) begin  harray[12]<=abs12*a16+b16;end
else if(abs12<step*17) begin  harray[12]<=abs12*a17+b17;end
else if(abs12<step*18) begin  harray[12]<=abs12*a18+b18;end
else if(abs12<step*19) begin  harray[12]<=abs12*a19+b19;end
else if(abs12<step*20) begin  harray[12]<=abs12*a20+b20;end
else if(abs12<step*21) begin  harray[12]<=abs12*a21+b21;end
else if(abs12<step*22) begin  harray[12]<=abs12*a22+b22;end
else if(abs12<step*23) begin  harray[12]<=abs12*a23+b23;end
else if(abs12<step*24) begin  harray[12]<=abs12*a24+b24;end
else if(abs12<step*25) begin  harray[12]<=abs12*a25+b25;end
else if(abs12<step*26) begin  harray[12]<=abs12*a26+b26;end
else if(abs12<step*27) begin  harray[12]<=abs12*a27+b27;end
else if(abs12<step*28) begin  harray[12]<=abs12*a28+b28;end
else if(abs12<step*29) begin  harray[12]<=abs12*a29+b29;end
else if(abs12<step*30) begin  harray[12]<=abs12*a30+b30;end
else if(abs12<step*31) begin  harray[12]<=abs12*a31+b31;end
else if(abs12<step*32) begin  harray[12]<=abs12*a32+b32;end
if(hprimearray[12]<0) harray[12]<=-harray[12];
end 
//-------------class 13---------------
always @(*) begin
if(abs13>step*32)begin harray[13]<=65536;end
else if(abs13<step*2) begin  harray[13]<=abs13*a2+b2;end
else if(abs13<step*3) begin  harray[13]<=abs13*a3+b3;end
else if(abs13<step*4) begin  harray[13]<=abs13*a4+b4;end
else if(abs13<step*5) begin  harray[13]<=abs13*a5+b5;end
else if(abs13<step*6) begin  harray[13]<=abs13*a6+b6;end
else if(abs13<step*7) begin  harray[13]<=abs13*a7+b7;end
else if(abs13<step*8) begin  harray[13]<=abs13*a8+b8;end
else if(abs13<step*9) begin  harray[13]<=abs13*a9+b9;end
else if(abs13<step*10) begin  harray[13]<=abs13*a10+b10;end
else if(abs13<step*11) begin  harray[13]<=abs13*a11+b11;end
else if(abs13<step*12) begin  harray[13]<=abs13*a12+b12;end
else if(abs13<step*13) begin  harray[13]<=abs13*a13+b13;end
else if(abs13<step*14) begin  harray[13]<=abs13*a14+b14;end
else if(abs13<step*15) begin  harray[13]<=abs13*a15+b15;end
else if(abs13<step*16) begin  harray[13]<=abs13*a16+b16;end
else if(abs13<step*17) begin  harray[13]<=abs13*a17+b17;end
else if(abs13<step*18) begin  harray[13]<=abs13*a18+b18;end
else if(abs13<step*19) begin  harray[13]<=abs13*a19+b19;end
else if(abs13<step*20) begin  harray[13]<=abs13*a20+b20;end
else if(abs13<step*21) begin  harray[13]<=abs13*a21+b21;end
else if(abs13<step*22) begin  harray[13]<=abs13*a22+b22;end
else if(abs13<step*23) begin  harray[13]<=abs13*a23+b23;end
else if(abs13<step*24) begin  harray[13]<=abs13*a24+b24;end
else if(abs13<step*25) begin  harray[13]<=abs13*a25+b25;end
else if(abs13<step*26) begin  harray[13]<=abs13*a26+b26;end
else if(abs13<step*27) begin  harray[13]<=abs13*a27+b27;end
else if(abs13<step*28) begin  harray[13]<=abs13*a28+b28;end
else if(abs13<step*29) begin  harray[13]<=abs13*a29+b29;end
else if(abs13<step*30) begin  harray[13]<=abs13*a30+b30;end
else if(abs13<step*31) begin  harray[13]<=abs13*a31+b31;end
else if(abs13<step*32) begin  harray[13]<=abs13*a32+b32;end
if(hprimearray[13]<0) harray[13]<=-harray[13];
end 
//-------------class 14---------------
always @(*) begin
if(abs14>step*32)begin harray[14]<=65536;end
else if(abs14<step*2) begin  harray[14]<=abs14*a2+b2;end
else if(abs14<step*3) begin  harray[14]<=abs14*a3+b3;end
else if(abs14<step*4) begin  harray[14]<=abs14*a4+b4;end
else if(abs14<step*5) begin  harray[14]<=abs14*a5+b5;end
else if(abs14<step*6) begin  harray[14]<=abs14*a6+b6;end
else if(abs14<step*7) begin  harray[14]<=abs14*a7+b7;end
else if(abs14<step*8) begin  harray[14]<=abs14*a8+b8;end
else if(abs14<step*9) begin  harray[14]<=abs14*a9+b9;end
else if(abs14<step*10) begin  harray[14]<=abs14*a10+b10;end
else if(abs14<step*11) begin  harray[14]<=abs14*a11+b11;end
else if(abs14<step*12) begin  harray[14]<=abs14*a12+b12;end
else if(abs14<step*13) begin  harray[14]<=abs14*a13+b13;end
else if(abs14<step*14) begin  harray[14]<=abs14*a14+b14;end
else if(abs14<step*15) begin  harray[14]<=abs14*a15+b15;end
else if(abs14<step*16) begin  harray[14]<=abs14*a16+b16;end
else if(abs14<step*17) begin  harray[14]<=abs14*a17+b17;end
else if(abs14<step*18) begin  harray[14]<=abs14*a18+b18;end
else if(abs14<step*19) begin  harray[14]<=abs14*a19+b19;end
else if(abs14<step*20) begin  harray[14]<=abs14*a20+b20;end
else if(abs14<step*21) begin  harray[14]<=abs14*a21+b21;end
else if(abs14<step*22) begin  harray[14]<=abs14*a22+b22;end
else if(abs14<step*23) begin  harray[14]<=abs14*a23+b23;end
else if(abs14<step*24) begin  harray[14]<=abs14*a24+b24;end
else if(abs14<step*25) begin  harray[14]<=abs14*a25+b25;end
else if(abs14<step*26) begin  harray[14]<=abs14*a26+b26;end
else if(abs14<step*27) begin  harray[14]<=abs14*a27+b27;end
else if(abs14<step*28) begin  harray[14]<=abs14*a28+b28;end
else if(abs14<step*29) begin  harray[14]<=abs14*a29+b29;end
else if(abs14<step*30) begin  harray[14]<=abs14*a30+b30;end
else if(abs14<step*31) begin  harray[14]<=abs14*a31+b31;end
else if(abs14<step*32) begin  harray[14]<=abs14*a32+b32;end
if(hprimearray[14]<0) harray[14]<=-harray[14];
end 
//-------------class 15---------------
always @(*) begin
if(abs15>step*32)begin harray[15]<=(hprimearray[15]<0)?(-65536):65536;end
else if(abs15<step*2) begin  harray[15]<=abs15*a2+b2;end
else if(abs15<step*3) begin  harray[15]<=abs15*a3+b3;end
else if(abs15<step*4) begin  harray[15]<=abs15*a4+b4;end
else if(abs15<step*5) begin  harray[15]<=abs15*a5+b5;end
else if(abs15<step*6) begin  harray[15]<=abs15*a6+b6;end
else if(abs15<step*7) begin  harray[15]<=abs15*a7+b7;end
else if(abs15<step*8) begin  harray[15]<=abs15*a8+b8;end
else if(abs15<step*9) begin  harray[15]<=abs15*a9+b9;end
else if(abs15<step*10) begin  harray[15]<=abs15*a10+b10;end
else if(abs15<step*11) begin  harray[15]<=abs15*a11+b11;end
else if(abs15<step*12) begin  harray[15]<=abs15*a12+b12;end
else if(abs15<step*13) begin  harray[15]<=abs15*a13+b13;end
else if(abs15<step*14) begin  harray[15]<=abs15*a14+b14;end
else if(abs15<step*15) begin  harray[15]<=abs15*a15+b15;end
else if(abs15<step*16) begin  harray[15]<=abs15*a16+b16;end
else if(abs15<step*17) begin  harray[15]<=abs15*a17+b17;end
else if(abs15<step*18) begin  harray[15]<=abs15*a18+b18;end
else if(abs15<step*19) begin  harray[15]<=abs15*a19+b19;end
else if(abs15<step*20) begin  harray[15]<=abs15*a20+b20;end
else if(abs15<step*21) begin  harray[15]<=abs15*a21+b21;end
else if(abs15<step*22) begin  harray[15]<=abs15*a22+b22;end
else if(abs15<step*23) begin  harray[15]<=abs15*a23+b23;end
else if(abs15<step*24) begin  harray[15]<=abs15*a24+b24;end
else if(abs15<step*25) begin  harray[15]<=abs15*a25+b25;end
else if(abs15<step*26) begin  harray[15]<=abs15*a26+b26;end
else if(abs15<step*27) begin  harray[15]<=abs15*a27+b27;end
else if(abs15<step*28) begin  harray[15]<=abs15*a28+b28;end
else if(abs15<step*29) begin  harray[15]<=abs15*a29+b29;end
else if(abs15<step*30) begin  harray[15]<=abs15*a30+b30;end
else if(abs15<step*31) begin  harray[15]<=abs15*a31+b31;end
else if(abs15<step*32) begin  harray[15]<=abs15*a32+b32;end
if(hprimearray[15]<0) harray[15]<=-harray[15];
end


endmodule