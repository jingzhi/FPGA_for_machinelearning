module sigmoid(
	input [31:0] hprimearray[0:15],
	output[31:0] harray[0:15]
);
parameter step=6144;
parameter a1=16372; parameter b1=32768;
parameter a2=16300; parameter b2=32775;
parameter a3=16158; parameter b3=32801;
parameter a4=15948; parameter b4=32860;
parameter a5=15674; parameter b5=32963;
parameter a6=15339; parameter b6=33120;
parameter a7=14950; parameter b7=33339;
parameter a8=14513; parameter b8=33626;
parameter a9=14034; parameter b9=33985;
parameter a10=13520; parameter b10=34419;
parameter a11=12977; parameter b11=34928;
parameter a12=12413; parameter b12=35510;
parameter a13=11834; parameter b13=36161;
parameter a14=11246; parameter b14=36877;
parameter a15=10655; parameter b15=37653;
parameter a16=10067; parameter b16=38480;
parameter a17=9485; parameter b17=39353;
parameter a18=8914; parameter b18=40263;
parameter a19=8358; parameter b19=41202;
parameter a20=7819; parameter b20=42162;
parameter a21=7299; parameter b21=43137;
parameter a22=6800; parameter b22=44118;
parameter a23=6324; parameter b23=45100;
parameter a24=5871; parameter b24=46076;
parameter a25=5443; parameter b25=47041;
parameter a26=5038; parameter b26=47990;
parameter a27=4657; parameter b27=48919;
parameter a28=4299; parameter b28=49825;
parameter a29=3964; parameter b29=50703;
parameter a30=3652; parameter b30=51553;
parameter a31=3360; parameter b31=52372;
parameter a32=3090; parameter b32=53159;

wire abs0;
wire abs1;
wire abs2;
wire abs3;
wire abs4;
wire abs5;
wire abs6;
wire abs7;
wire abs8;
wire abs9;
wire abs10;
wire abs11;
wire abs12;
wire abs13;
wire abs14;
wire abs15;
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
if(abs0>step*32)begin harray[0]<=(hprimearray[0]<0)?(-65536):65536;end
else if(abs0<step) begin harray[0]<=(hprimearray[0]<0)?(-((abs0*a1+b1))):(abs0*a1+b1);end
else if(abs0<step*2) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a2+b2)):(abs0*a2+b2);end 
else if(abs0<step*3) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a3+b3)):(abs0*a3+b3);end 
else if(abs0<step*4) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a4+b4)):(abs0*a4+b4);end 
else if(abs0<step*5) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a5+b5)):(abs0*a5+b5);end 
else if(abs0<step*6) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a6+b6)):(abs0*a6+b6);end 
else if(abs0<step*7) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a7+b7)):(abs0*a7+b7);end 
else if(abs0<step*8) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a8+b8)):(abs0*a8+b8);end 
else if(abs0<step*9) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a9+b9)):(abs0*a9+b9);end 
else if(abs0<step*10) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a10+b10)):(abs0*a10+b10);end 
else if(abs0<step*11) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a11+b11)):(abs0*a11+b11);end 
else if(abs0<step*12) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a12+b12)):(abs0*a12+b12);end 
else if(abs0<step*13) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a13+b13)):(abs0*a13+b13);end 
else if(abs0<step*14) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a14+b14)):(abs0*a14+b14);end 
else if(abs0<step*15) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a15+b15)):(abs0*a15+b15);end 
else if(abs0<step*16) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a16+b16)):(abs0*a16+b16);end 
else if(abs0<step*17) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a17+b17)):(abs0*a17+b17);end 
else if(abs0<step*18) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a18+b18)):(abs0*a18+b18);end 
else if(abs0<step*19) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a19+b19)):(abs0*a19+b19);end 
else if(abs0<step*20) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a20+b20)):(abs0*a20+b20);end 
else if(abs0<step*21) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a21+b21)):(abs0*a21+b21);end 
else if(abs0<step*22) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a22+b22)):(abs0*a22+b22);end 
else if(abs0<step*23) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a23+b23)):(abs0*a23+b23);end 
else if(abs0<step*24) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a24+b24)):(abs0*a24+b24);end 
else if(abs0<step*25) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a25+b25)):(abs0*a25+b25);end 
else if(abs0<step*26) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a26+b26)):(abs0*a26+b26);end 
else if(abs0<step*27) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a27+b27)):(abs0*a27+b27);end 
else if(abs0<step*28) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a28+b28)):(abs0*a28+b28);end 
else if(abs0<step*29) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a29+b29)):(abs0*a29+b29);end 
else if(abs0<step*30) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a30+b30)):(abs0*a30+b30);end 
else if(abs0<step*31) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a31+b31)):(abs0*a31+b31);end 
else if(abs0<step*32) begin harray[0]<=(hprimearray[0]<0)?(-(abs0*a32+b32)):(abs0*a32+b32);end
end 
//-------------class 1---------------
always @(*) begin
if(abs1>step*32)begin harray[1]<=(hprimearray[1]<0)?(-65536):65536;end
else if(abs1<step) begin harray[1]<=(hprimearray[1]<0)?(-((abs1*a1+b1))):(abs1*a1+b1);end
else if(abs1<step*2) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a2+b2)):(abs1*a2+b2);end 
else if(abs1<step*3) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a3+b3)):(abs1*a3+b3);end 
else if(abs1<step*4) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a4+b4)):(abs1*a4+b4);end 
else if(abs1<step*5) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a5+b5)):(abs1*a5+b5);end 
else if(abs1<step*6) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a6+b6)):(abs1*a6+b6);end 
else if(abs1<step*7) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a7+b7)):(abs1*a7+b7);end 
else if(abs1<step*8) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a8+b8)):(abs1*a8+b8);end 
else if(abs1<step*9) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a9+b9)):(abs1*a9+b9);end 
else if(abs1<step*10) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a10+b10)):(abs1*a10+b10);end 
else if(abs1<step*11) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a11+b11)):(abs1*a11+b11);end 
else if(abs1<step*12) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a12+b12)):(abs1*a12+b12);end 
else if(abs1<step*13) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a13+b13)):(abs1*a13+b13);end 
else if(abs1<step*14) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a14+b14)):(abs1*a14+b14);end 
else if(abs1<step*15) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a15+b15)):(abs1*a15+b15);end 
else if(abs1<step*16) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a16+b16)):(abs1*a16+b16);end 
else if(abs1<step*17) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a17+b17)):(abs1*a17+b17);end 
else if(abs1<step*18) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a18+b18)):(abs1*a18+b18);end 
else if(abs1<step*19) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a19+b19)):(abs1*a19+b19);end 
else if(abs1<step*20) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a20+b20)):(abs1*a20+b20);end 
else if(abs1<step*21) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a21+b21)):(abs1*a21+b21);end 
else if(abs1<step*22) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a22+b22)):(abs1*a22+b22);end 
else if(abs1<step*23) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a23+b23)):(abs1*a23+b23);end 
else if(abs1<step*24) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a24+b24)):(abs1*a24+b24);end 
else if(abs1<step*25) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a25+b25)):(abs1*a25+b25);end 
else if(abs1<step*26) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a26+b26)):(abs1*a26+b26);end 
else if(abs1<step*27) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a27+b27)):(abs1*a27+b27);end 
else if(abs1<step*28) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a28+b28)):(abs1*a28+b28);end 
else if(abs1<step*29) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a29+b29)):(abs1*a29+b29);end 
else if(abs1<step*30) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a30+b30)):(abs1*a30+b30);end 
else if(abs1<step*31) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a31+b31)):(abs1*a31+b31);end 
else if(abs1<step*32) begin harray[1]<=(hprimearray[1]<0)?(-(abs1*a32+b32)):(abs1*a32+b32);end 
end
//-------------class 2---------------
always @(*) begin
if(abs2>step*32)begin harray[2]<=(hprimearray[2]<0)?(-65536):65536;end
else if(abs2<step) begin harray[2]<=(hprimearray[2]<0)?(-((abs2*a1+b1))):(abs2*a1+b1);end
else if(abs2<step*2) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a2+b2)):(abs2*a2+b2);end 
else if(abs2<step*3) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a3+b3)):(abs2*a3+b3);end 
else if(abs2<step*4) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a4+b4)):(abs2*a4+b4);end 
else if(abs2<step*5) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a5+b5)):(abs2*a5+b5);end 
else if(abs2<step*6) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a6+b6)):(abs2*a6+b6);end 
else if(abs2<step*7) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a7+b7)):(abs2*a7+b7);end 
else if(abs2<step*8) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a8+b8)):(abs2*a8+b8);end 
else if(abs2<step*9) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a9+b9)):(abs2*a9+b9);end 
else if(abs2<step*10) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a10+b10)):(abs2*a10+b10);end 
else if(abs2<step*11) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a11+b11)):(abs2*a11+b11);end 
else if(abs2<step*12) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a12+b12)):(abs2*a12+b12);end 
else if(abs2<step*13) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a13+b13)):(abs2*a13+b13);end 
else if(abs2<step*14) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a14+b14)):(abs2*a14+b14);end 
else if(abs2<step*15) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a15+b15)):(abs2*a15+b15);end 
else if(abs2<step*16) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a16+b16)):(abs2*a16+b16);end 
else if(abs2<step*17) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a17+b17)):(abs2*a17+b17);end 
else if(abs2<step*18) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a18+b18)):(abs2*a18+b18);end 
else if(abs2<step*19) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a19+b19)):(abs2*a19+b19);end 
else if(abs2<step*20) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a20+b20)):(abs2*a20+b20);end 
else if(abs2<step*21) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a21+b21)):(abs2*a21+b21);end 
else if(abs2<step*22) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a22+b22)):(abs2*a22+b22);end 
else if(abs2<step*23) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a23+b23)):(abs2*a23+b23);end 
else if(abs2<step*24) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a24+b24)):(abs2*a24+b24);end 
else if(abs2<step*25) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a25+b25)):(abs2*a25+b25);end 
else if(abs2<step*26) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a26+b26)):(abs2*a26+b26);end 
else if(abs2<step*27) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a27+b27)):(abs2*a27+b27);end 
else if(abs2<step*28) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a28+b28)):(abs2*a28+b28);end 
else if(abs2<step*29) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a29+b29)):(abs2*a29+b29);end 
else if(abs2<step*30) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a30+b30)):(abs2*a30+b30);end 
else if(abs2<step*31) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a31+b31)):(abs2*a31+b31);end 
else if(abs2<step*32) begin harray[2]<=(hprimearray[2]<0)?(-(abs2*a32+b32)):(abs2*a32+b32);end
end 
//-------------class 3---------------
always @(*) begin
if(abs3>step*32)begin harray[3]<=(hprimearray[3]<0)?(-65536):65536;end
else if(abs3<step) begin harray[3]<=(hprimearray[3]<0)?(-((abs3*a1+b1))):(abs3*a1+b1);end
else if(abs3<step*2) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a2+b2)):(abs3*a2+b2);end 
else if(abs3<step*3) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a3+b3)):(abs3*a3+b3);end 
else if(abs3<step*4) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a4+b4)):(abs3*a4+b4);end 
else if(abs3<step*5) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a5+b5)):(abs3*a5+b5);end 
else if(abs3<step*6) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a6+b6)):(abs3*a6+b6);end 
else if(abs3<step*7) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a7+b7)):(abs3*a7+b7);end 
else if(abs3<step*8) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a8+b8)):(abs3*a8+b8);end 
else if(abs3<step*9) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a9+b9)):(abs3*a9+b9);end 
else if(abs3<step*10) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a10+b10)):(abs3*a10+b10);end 
else if(abs3<step*11) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a11+b11)):(abs3*a11+b11);end 
else if(abs3<step*12) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a12+b12)):(abs3*a12+b12);end 
else if(abs3<step*13) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a13+b13)):(abs3*a13+b13);end 
else if(abs3<step*14) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a14+b14)):(abs3*a14+b14);end 
else if(abs3<step*15) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a15+b15)):(abs3*a15+b15);end 
else if(abs3<step*16) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a16+b16)):(abs3*a16+b16);end 
else if(abs3<step*17) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a17+b17)):(abs3*a17+b17);end 
else if(abs3<step*18) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a18+b18)):(abs3*a18+b18);end 
else if(abs3<step*19) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a19+b19)):(abs3*a19+b19);end 
else if(abs3<step*20) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a20+b20)):(abs3*a20+b20);end 
else if(abs3<step*21) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a21+b21)):(abs3*a21+b21);end 
else if(abs3<step*22) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a22+b22)):(abs3*a22+b22);end 
else if(abs3<step*23) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a23+b23)):(abs3*a23+b23);end 
else if(abs3<step*24) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a24+b24)):(abs3*a24+b24);end 
else if(abs3<step*25) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a25+b25)):(abs3*a25+b25);end 
else if(abs3<step*26) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a26+b26)):(abs3*a26+b26);end 
else if(abs3<step*27) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a27+b27)):(abs3*a27+b27);end 
else if(abs3<step*28) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a28+b28)):(abs3*a28+b28);end 
else if(abs3<step*29) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a29+b29)):(abs3*a29+b29);end 
else if(abs3<step*30) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a30+b30)):(abs3*a30+b30);end 
else if(abs3<step*31) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a31+b31)):(abs3*a31+b31);end 
else if(abs3<step*32) begin harray[3]<=(hprimearray[3]<0)?(-(abs3*a32+b32)):(abs3*a32+b32);end
end 
//-------------class 4---------------
always @(*) begin
if(abs4>step*32)begin harray[4]<=(hprimearray[4]<0)?(-65536):65536;end
else if(abs4<step) begin harray[4]<=(hprimearray[4]<0)?(-((abs4*a1+b1))):(abs4*a1+b1);end
else if(abs4<step*2) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a2+b2)):(abs4*a2+b2);end 
else if(abs4<step*3) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a3+b3)):(abs4*a3+b3);end 
else if(abs4<step*4) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a4+b4)):(abs4*a4+b4);end 
else if(abs4<step*5) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a5+b5)):(abs4*a5+b5);end 
else if(abs4<step*6) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a6+b6)):(abs4*a6+b6);end 
else if(abs4<step*7) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a7+b7)):(abs4*a7+b7);end 
else if(abs4<step*8) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a8+b8)):(abs4*a8+b8);end 
else if(abs4<step*9) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a9+b9)):(abs4*a9+b9);end 
else if(abs4<step*10) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a10+b10)):(abs4*a10+b10);end 
else if(abs4<step*11) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a11+b11)):(abs4*a11+b11);end 
else if(abs4<step*12) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a12+b12)):(abs4*a12+b12);end 
else if(abs4<step*13) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a13+b13)):(abs4*a13+b13);end 
else if(abs4<step*14) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a14+b14)):(abs4*a14+b14);end 
else if(abs4<step*15) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a15+b15)):(abs4*a15+b15);end 
else if(abs4<step*16) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a16+b16)):(abs4*a16+b16);end 
else if(abs4<step*17) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a17+b17)):(abs4*a17+b17);end 
else if(abs4<step*18) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a18+b18)):(abs4*a18+b18);end 
else if(abs4<step*19) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a19+b19)):(abs4*a19+b19);end 
else if(abs4<step*20) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a20+b20)):(abs4*a20+b20);end 
else if(abs4<step*21) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a21+b21)):(abs4*a21+b21);end 
else if(abs4<step*22) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a22+b22)):(abs4*a22+b22);end 
else if(abs4<step*23) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a23+b23)):(abs4*a23+b23);end 
else if(abs4<step*24) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a24+b24)):(abs4*a24+b24);end 
else if(abs4<step*25) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a25+b25)):(abs4*a25+b25);end 
else if(abs4<step*26) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a26+b26)):(abs4*a26+b26);end 
else if(abs4<step*27) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a27+b27)):(abs4*a27+b27);end 
else if(abs4<step*28) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a28+b28)):(abs4*a28+b28);end 
else if(abs4<step*29) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a29+b29)):(abs4*a29+b29);end 
else if(abs4<step*30) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a30+b30)):(abs4*a30+b30);end 
else if(abs4<step*31) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a31+b31)):(abs4*a31+b31);end 
else if(abs4<step*32) begin harray[4]<=(hprimearray[4]<0)?(-(abs4*a32+b32)):(abs4*a32+b32);end
end 
//-------------class 5---------------
always @(*) begin
if(abs5>step*32)begin harray[5]<=(hprimearray[5]<0)?(-65536):65536;end
else if(abs5<step) begin harray[5]<=(hprimearray[5]<0)?(-((abs5*a1+b1))):(abs5*a1+b1);end
else if(abs5<step*2) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a2+b2)):(abs5*a2+b2);end 
else if(abs5<step*3) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a3+b3)):(abs5*a3+b3);end 
else if(abs5<step*4) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a4+b4)):(abs5*a4+b4);end 
else if(abs5<step*5) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a5+b5)):(abs5*a5+b5);end 
else if(abs5<step*6) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a6+b6)):(abs5*a6+b6);end 
else if(abs5<step*7) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a7+b7)):(abs5*a7+b7);end 
else if(abs5<step*8) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a8+b8)):(abs5*a8+b8);end 
else if(abs5<step*9) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a9+b9)):(abs5*a9+b9);end 
else if(abs5<step*10) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a10+b10)):(abs5*a10+b10);end 
else if(abs5<step*11) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a11+b11)):(abs5*a11+b11);end 
else if(abs5<step*12) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a12+b12)):(abs5*a12+b12);end 
else if(abs5<step*13) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a13+b13)):(abs5*a13+b13);end 
else if(abs5<step*14) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a14+b14)):(abs5*a14+b14);end 
else if(abs5<step*15) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a15+b15)):(abs5*a15+b15);end 
else if(abs5<step*16) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a16+b16)):(abs5*a16+b16);end 
else if(abs5<step*17) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a17+b17)):(abs5*a17+b17);end 
else if(abs5<step*18) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a18+b18)):(abs5*a18+b18);end 
else if(abs5<step*19) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a19+b19)):(abs5*a19+b19);end 
else if(abs5<step*20) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a20+b20)):(abs5*a20+b20);end 
else if(abs5<step*21) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a21+b21)):(abs5*a21+b21);end 
else if(abs5<step*22) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a22+b22)):(abs5*a22+b22);end 
else if(abs5<step*23) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a23+b23)):(abs5*a23+b23);end 
else if(abs5<step*24) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a24+b24)):(abs5*a24+b24);end 
else if(abs5<step*25) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a25+b25)):(abs5*a25+b25);end 
else if(abs5<step*26) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a26+b26)):(abs5*a26+b26);end 
else if(abs5<step*27) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a27+b27)):(abs5*a27+b27);end 
else if(abs5<step*28) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a28+b28)):(abs5*a28+b28);end 
else if(abs5<step*29) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a29+b29)):(abs5*a29+b29);end 
else if(abs5<step*30) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a30+b30)):(abs5*a30+b30);end 
else if(abs5<step*31) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a31+b31)):(abs5*a31+b31);end 
else if(abs5<step*32) begin harray[5]<=(hprimearray[5]<0)?(-(abs5*a32+b32)):(abs5*a32+b32);end 
end
//-------------class 6---------------
always @(*) begin
if(abs6>step*32)begin harray[6]<=(hprimearray[6]<0)?(-65536):65536;end
else if(abs6<step) begin harray[6]<=(hprimearray[6]<0)?(-((abs6*a1+b1))):(abs6*a1+b1);end
else if(abs6<step*2) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a2+b2)):(abs6*a2+b2);end 
else if(abs6<step*3) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a3+b3)):(abs6*a3+b3);end 
else if(abs6<step*4) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a4+b4)):(abs6*a4+b4);end 
else if(abs6<step*5) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a5+b5)):(abs6*a5+b5);end 
else if(abs6<step*6) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a6+b6)):(abs6*a6+b6);end 
else if(abs6<step*7) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a7+b7)):(abs6*a7+b7);end 
else if(abs6<step*8) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a8+b8)):(abs6*a8+b8);end 
else if(abs6<step*9) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a9+b9)):(abs6*a9+b9);end 
else if(abs6<step*10) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a10+b10)):(abs6*a10+b10);end 
else if(abs6<step*11) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a11+b11)):(abs6*a11+b11);end 
else if(abs6<step*12) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a12+b12)):(abs6*a12+b12);end 
else if(abs6<step*13) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a13+b13)):(abs6*a13+b13);end 
else if(abs6<step*14) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a14+b14)):(abs6*a14+b14);end 
else if(abs6<step*15) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a15+b15)):(abs6*a15+b15);end 
else if(abs6<step*16) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a16+b16)):(abs6*a16+b16);end 
else if(abs6<step*17) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a17+b17)):(abs6*a17+b17);end 
else if(abs6<step*18) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a18+b18)):(abs6*a18+b18);end 
else if(abs6<step*19) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a19+b19)):(abs6*a19+b19);end 
else if(abs6<step*20) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a20+b20)):(abs6*a20+b20);end 
else if(abs6<step*21) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a21+b21)):(abs6*a21+b21);end 
else if(abs6<step*22) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a22+b22)):(abs6*a22+b22);end 
else if(abs6<step*23) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a23+b23)):(abs6*a23+b23);end 
else if(abs6<step*24) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a24+b24)):(abs6*a24+b24);end 
else if(abs6<step*25) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a25+b25)):(abs6*a25+b25);end 
else if(abs6<step*26) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a26+b26)):(abs6*a26+b26);end 
else if(abs6<step*27) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a27+b27)):(abs6*a27+b27);end 
else if(abs6<step*28) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a28+b28)):(abs6*a28+b28);end 
else if(abs6<step*29) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a29+b29)):(abs6*a29+b29);end 
else if(abs6<step*30) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a30+b30)):(abs6*a30+b30);end 
else if(abs6<step*31) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a31+b31)):(abs6*a31+b31);end 
else if(abs6<step*32) begin harray[6]<=(hprimearray[6]<0)?(-(abs6*a32+b32)):(abs6*a32+b32);end
end 
//-------------class 7---------------
always @(*) begin
if(abs7>step*32)begin harray[7]<=(hprimearray[7]<0)?(-65536):65536;end
else if(abs7<step) begin harray[7]<=(hprimearray[7]<0)?(-((abs7*a1+b1))):(abs7*a1+b1);end
else if(abs7<step*2) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a2+b2)):(abs7*a2+b2);end 
else if(abs7<step*3) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a3+b3)):(abs7*a3+b3);end 
else if(abs7<step*4) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a4+b4)):(abs7*a4+b4);end 
else if(abs7<step*5) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a5+b5)):(abs7*a5+b5);end 
else if(abs7<step*6) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a6+b6)):(abs7*a6+b6);end 
else if(abs7<step*7) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a7+b7)):(abs7*a7+b7);end 
else if(abs7<step*8) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a8+b8)):(abs7*a8+b8);end 
else if(abs7<step*9) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a9+b9)):(abs7*a9+b9);end 
else if(abs7<step*10) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a10+b10)):(abs7*a10+b10);end 
else if(abs7<step*11) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a11+b11)):(abs7*a11+b11);end 
else if(abs7<step*12) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a12+b12)):(abs7*a12+b12);end 
else if(abs7<step*13) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a13+b13)):(abs7*a13+b13);end 
else if(abs7<step*14) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a14+b14)):(abs7*a14+b14);end 
else if(abs7<step*15) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a15+b15)):(abs7*a15+b15);end 
else if(abs7<step*16) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a16+b16)):(abs7*a16+b16);end 
else if(abs7<step*17) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a17+b17)):(abs7*a17+b17);end 
else if(abs7<step*18) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a18+b18)):(abs7*a18+b18);end 
else if(abs7<step*19) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a19+b19)):(abs7*a19+b19);end 
else if(abs7<step*20) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a20+b20)):(abs7*a20+b20);end 
else if(abs7<step*21) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a21+b21)):(abs7*a21+b21);end 
else if(abs7<step*22) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a22+b22)):(abs7*a22+b22);end 
else if(abs7<step*23) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a23+b23)):(abs7*a23+b23);end 
else if(abs7<step*24) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a24+b24)):(abs7*a24+b24);end 
else if(abs7<step*25) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a25+b25)):(abs7*a25+b25);end 
else if(abs7<step*26) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a26+b26)):(abs7*a26+b26);end 
else if(abs7<step*27) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a27+b27)):(abs7*a27+b27);end 
else if(abs7<step*28) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a28+b28)):(abs7*a28+b28);end 
else if(abs7<step*29) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a29+b29)):(abs7*a29+b29);end 
else if(abs7<step*30) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a30+b30)):(abs7*a30+b30);end 
else if(abs7<step*31) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a31+b31)):(abs7*a31+b31);end 
else if(abs7<step*32) begin harray[7]<=(hprimearray[7]<0)?(-(abs7*a32+b32)):(abs7*a32+b32);end 
end
//-------------class 8---------------
always @(*) begin
if(abs8>step*32)begin harray[8]<=(hprimearray[8]<0)?(-65536):65536;end
else if(abs8<step) begin harray[8]<=(hprimearray[8]<0)?(-((abs8*a1+b1))):(abs8*a1+b1);end
else if(abs8<step*2) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a2+b2)):(abs8*a2+b2);end 
else if(abs8<step*3) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a3+b3)):(abs8*a3+b3);end 
else if(abs8<step*4) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a4+b4)):(abs8*a4+b4);end 
else if(abs8<step*5) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a5+b5)):(abs8*a5+b5);end 
else if(abs8<step*6) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a6+b6)):(abs8*a6+b6);end 
else if(abs8<step*7) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a7+b7)):(abs8*a7+b7);end 
else if(abs8<step*8) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a8+b8)):(abs8*a8+b8);end 
else if(abs8<step*9) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a9+b9)):(abs8*a9+b9);end 
else if(abs8<step*10) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a10+b10)):(abs8*a10+b10);end 
else if(abs8<step*11) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a11+b11)):(abs8*a11+b11);end 
else if(abs8<step*12) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a12+b12)):(abs8*a12+b12);end 
else if(abs8<step*13) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a13+b13)):(abs8*a13+b13);end 
else if(abs8<step*14) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a14+b14)):(abs8*a14+b14);end 
else if(abs8<step*15) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a15+b15)):(abs8*a15+b15);end 
else if(abs8<step*16) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a16+b16)):(abs8*a16+b16);end 
else if(abs8<step*17) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a17+b17)):(abs8*a17+b17);end 
else if(abs8<step*18) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a18+b18)):(abs8*a18+b18);end 
else if(abs8<step*19) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a19+b19)):(abs8*a19+b19);end 
else if(abs8<step*20) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a20+b20)):(abs8*a20+b20);end 
else if(abs8<step*21) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a21+b21)):(abs8*a21+b21);end 
else if(abs8<step*22) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a22+b22)):(abs8*a22+b22);end 
else if(abs8<step*23) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a23+b23)):(abs8*a23+b23);end 
else if(abs8<step*24) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a24+b24)):(abs8*a24+b24);end 
else if(abs8<step*25) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a25+b25)):(abs8*a25+b25);end 
else if(abs8<step*26) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a26+b26)):(abs8*a26+b26);end 
else if(abs8<step*27) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a27+b27)):(abs8*a27+b27);end 
else if(abs8<step*28) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a28+b28)):(abs8*a28+b28);end 
else if(abs8<step*29) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a29+b29)):(abs8*a29+b29);end 
else if(abs8<step*30) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a30+b30)):(abs8*a30+b30);end 
else if(abs8<step*31) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a31+b31)):(abs8*a31+b31);end 
else if(abs8<step*32) begin harray[8]<=(hprimearray[8]<0)?(-(abs8*a32+b32)):(abs8*a32+b32);end 
end
//-------------class 9---------------
always @(*) begin
if(abs9>step*32)begin harray[9]<=(hprimearray[9]<0)?(-65536):65536;end
else if(abs9<step) begin harray[9]<=(hprimearray[9]<0)?(-((abs9*a1+b1))):(abs9*a1+b1);end
else if(abs9<step*2) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a2+b2)):(abs9*a2+b2);end 
else if(abs9<step*3) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a3+b3)):(abs9*a3+b3);end 
else if(abs9<step*4) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a4+b4)):(abs9*a4+b4);end 
else if(abs9<step*5) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a5+b5)):(abs9*a5+b5);end 
else if(abs9<step*6) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a6+b6)):(abs9*a6+b6);end 
else if(abs9<step*7) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a7+b7)):(abs9*a7+b7);end 
else if(abs9<step*8) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a8+b8)):(abs9*a8+b8);end 
else if(abs9<step*9) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a9+b9)):(abs9*a9+b9);end 
else if(abs9<step*10) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a10+b10)):(abs9*a10+b10);end 
else if(abs9<step*11) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a11+b11)):(abs9*a11+b11);end 
else if(abs9<step*12) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a12+b12)):(abs9*a12+b12);end 
else if(abs9<step*13) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a13+b13)):(abs9*a13+b13);end 
else if(abs9<step*14) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a14+b14)):(abs9*a14+b14);end 
else if(abs9<step*15) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a15+b15)):(abs9*a15+b15);end 
else if(abs9<step*16) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a16+b16)):(abs9*a16+b16);end 
else if(abs9<step*17) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a17+b17)):(abs9*a17+b17);end 
else if(abs9<step*18) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a18+b18)):(abs9*a18+b18);end 
else if(abs9<step*19) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a19+b19)):(abs9*a19+b19);end 
else if(abs9<step*20) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a20+b20)):(abs9*a20+b20);end 
else if(abs9<step*21) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a21+b21)):(abs9*a21+b21);end 
else if(abs9<step*22) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a22+b22)):(abs9*a22+b22);end 
else if(abs9<step*23) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a23+b23)):(abs9*a23+b23);end 
else if(abs9<step*24) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a24+b24)):(abs9*a24+b24);end 
else if(abs9<step*25) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a25+b25)):(abs9*a25+b25);end 
else if(abs9<step*26) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a26+b26)):(abs9*a26+b26);end 
else if(abs9<step*27) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a27+b27)):(abs9*a27+b27);end 
else if(abs9<step*28) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a28+b28)):(abs9*a28+b28);end 
else if(abs9<step*29) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a29+b29)):(abs9*a29+b29);end 
else if(abs9<step*30) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a30+b30)):(abs9*a30+b30);end 
else if(abs9<step*31) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a31+b31)):(abs9*a31+b31);end 
else if(abs9<step*32) begin harray[9]<=(hprimearray[9]<0)?(-(abs9*a32+b32)):(abs9*a32+b32);end 
end
//-------------class 10---------------
always @(*) begin
if(abs10>step*32)begin harray[10]<=(hprimearray[10]<0)?(-65536):65536;end
else if(abs10<step) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a1+b1)):(abs10*a1+b1);end
else if(abs10<step*2) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a2+b2)):(abs10*a2+b2);end 
else if(abs10<step*3) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a3+b3)):(abs10*a3+b3);end 
else if(abs10<step*4) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a4+b4)):(abs10*a4+b4);end 
else if(abs10<step*5) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a5+b5)):(abs10*a5+b5);end 
else if(abs10<step*6) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a6+b6)):(abs10*a6+b6);end 
else if(abs10<step*7) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a7+b7)):(abs10*a7+b7);end 
else if(abs10<step*8) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a8+b8)):(abs10*a8+b8);end 
else if(abs10<step*9) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a9+b9)):(abs10*a9+b9);end 
else if(abs10<step*10) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a10+b10)):(abs10*a10+b10);end 
else if(abs10<step*11) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a11+b11)):(abs10*a11+b11);end 
else if(abs10<step*12) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a12+b12)):(abs10*a12+b12);end 
else if(abs10<step*13) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a13+b13)):(abs10*a13+b13);end 
else if(abs10<step*14) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a14+b14)):(abs10*a14+b14);end 
else if(abs10<step*15) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a15+b15)):(abs10*a15+b15);end 
else if(abs10<step*16) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a16+b16)):(abs10*a16+b16);end 
else if(abs10<step*17) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a17+b17)):(abs10*a17+b17);end 
else if(abs10<step*18) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a18+b18)):(abs10*a18+b18);end 
else if(abs10<step*19) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a19+b19)):(abs10*a19+b19);end 
else if(abs10<step*20) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a20+b20)):(abs10*a20+b20);end 
else if(abs10<step*21) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a21+b21)):(abs10*a21+b21);end 
else if(abs10<step*22) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a22+b22)):(abs10*a22+b22);end 
else if(abs10<step*23) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a23+b23)):(abs10*a23+b23);end 
else if(abs10<step*24) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a24+b24)):(abs10*a24+b24);end 
else if(abs10<step*25) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a25+b25)):(abs10*a25+b25);end 
else if(abs10<step*26) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a26+b26)):(abs10*a26+b26);end 
else if(abs10<step*27) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a27+b27)):(abs10*a27+b27);end 
else if(abs10<step*28) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a28+b28)):(abs10*a28+b28);end 
else if(abs10<step*29) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a29+b29)):(abs10*a29+b29);end 
else if(abs10<step*30) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a30+b30)):(abs10*a30+b30);end 
else if(abs10<step*31) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a31+b31)):(abs10*a31+b31);end 
else if(abs10<step*32) begin harray[10]<=(hprimearray[10]<0)?(-(abs10*a32+b32)):(abs10*a32+b32);end 
end
//-------------class 11---------------
always @(*) begin
if(abs11>step*32)begin harray[11]<=(hprimearray[11]<0)?(-65536):65536;end
else if(abs11<step) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a1+b1)):(abs11*a1+b1);end
else if(abs11<step*2) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a2+b2)):(abs11*a2+b2);end 
else if(abs11<step*3) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a3+b3)):(abs11*a3+b3);end 
else if(abs11<step*4) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a4+b4)):(abs11*a4+b4);end 
else if(abs11<step*5) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a5+b5)):(abs11*a5+b5);end 
else if(abs11<step*6) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a6+b6)):(abs11*a6+b6);end 
else if(abs11<step*7) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a7+b7)):(abs11*a7+b7);end 
else if(abs11<step*8) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a8+b8)):(abs11*a8+b8);end 
else if(abs11<step*9) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a9+b9)):(abs11*a9+b9);end 
else if(abs11<step*10) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a10+b10)):(abs11*a10+b10);end 
else if(abs11<step*11) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a11+b11)):(abs11*a11+b11);end 
else if(abs11<step*12) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a12+b12)):(abs11*a12+b12);end 
else if(abs11<step*13) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a13+b13)):(abs11*a13+b13);end 
else if(abs11<step*14) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a14+b14)):(abs11*a14+b14);end 
else if(abs11<step*15) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a15+b15)):(abs11*a15+b15);end 
else if(abs11<step*16) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a16+b16)):(abs11*a16+b16);end 
else if(abs11<step*17) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a17+b17)):(abs11*a17+b17);end 
else if(abs11<step*18) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a18+b18)):(abs11*a18+b18);end 
else if(abs11<step*19) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a19+b19)):(abs11*a19+b19);end 
else if(abs11<step*20) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a20+b20)):(abs11*a20+b20);end 
else if(abs11<step*21) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a21+b21)):(abs11*a21+b21);end 
else if(abs11<step*22) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a22+b22)):(abs11*a22+b22);end 
else if(abs11<step*23) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a23+b23)):(abs11*a23+b23);end 
else if(abs11<step*24) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a24+b24)):(abs11*a24+b24);end 
else if(abs11<step*25) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a25+b25)):(abs11*a25+b25);end 
else if(abs11<step*26) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a26+b26)):(abs11*a26+b26);end 
else if(abs11<step*27) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a27+b27)):(abs11*a27+b27);end 
else if(abs11<step*28) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a28+b28)):(abs11*a28+b28);end 
else if(abs11<step*29) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a29+b29)):(abs11*a29+b29);end 
else if(abs11<step*30) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a30+b30)):(abs11*a30+b30);end 
else if(abs11<step*31) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a31+b31)):(abs11*a31+b31);end 
else if(abs11<step*32) begin harray[11]<=(hprimearray[11]<0)?(-(abs11*a32+b32)):(abs11*a32+b32);end
end 
//-------------class 12---------------
always @(*) begin
if(abs12>step*32)begin harray[12]<=(hprimearray[12]<0)?(-65536):65536;end
else if(abs12<step) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a1+b1)):(abs12*a1+b1);end
else if(abs12<step*2) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a2+b2)):(abs12*a2+b2);end 
else if(abs12<step*3) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a3+b3)):(abs12*a3+b3);end 
else if(abs12<step*4) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a4+b4)):(abs12*a4+b4);end 
else if(abs12<step*5) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a5+b5)):(abs12*a5+b5);end 
else if(abs12<step*6) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a6+b6)):(abs12*a6+b6);end 
else if(abs12<step*7) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a7+b7)):(abs12*a7+b7);end 
else if(abs12<step*8) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a8+b8)):(abs12*a8+b8);end 
else if(abs12<step*9) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a9+b9)):(abs12*a9+b9);end 
else if(abs12<step*10) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a10+b10)):(abs12*a10+b10);end 
else if(abs12<step*11) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a11+b11)):(abs12*a11+b11);end 
else if(abs12<step*12) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a12+b12)):(abs12*a12+b12);end 
else if(abs12<step*13) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a13+b13)):(abs12*a13+b13);end 
else if(abs12<step*14) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a14+b14)):(abs12*a14+b14);end 
else if(abs12<step*15) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a15+b15)):(abs12*a15+b15);end 
else if(abs12<step*16) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a16+b16)):(abs12*a16+b16);end 
else if(abs12<step*17) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a17+b17)):(abs12*a17+b17);end 
else if(abs12<step*18) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a18+b18)):(abs12*a18+b18);end 
else if(abs12<step*19) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a19+b19)):(abs12*a19+b19);end 
else if(abs12<step*20) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a20+b20)):(abs12*a20+b20);end 
else if(abs12<step*21) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a21+b21)):(abs12*a21+b21);end 
else if(abs12<step*22) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a22+b22)):(abs12*a22+b22);end 
else if(abs12<step*23) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a23+b23)):(abs12*a23+b23);end 
else if(abs12<step*24) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a24+b24)):(abs12*a24+b24);end 
else if(abs12<step*25) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a25+b25)):(abs12*a25+b25);end 
else if(abs12<step*26) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a26+b26)):(abs12*a26+b26);end 
else if(abs12<step*27) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a27+b27)):(abs12*a27+b27);end 
else if(abs12<step*28) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a28+b28)):(abs12*a28+b28);end 
else if(abs12<step*29) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a29+b29)):(abs12*a29+b29);end 
else if(abs12<step*30) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a30+b30)):(abs12*a30+b30);end 
else if(abs12<step*31) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a31+b31)):(abs12*a31+b31);end 
else if(abs12<step*32) begin harray[12]<=(hprimearray[12]<0)?(-(abs12*a32+b32)):(abs12*a32+b32);end
end 
//-------------class 13---------------
always @(*) begin
if(abs13>step*32)begin harray[13]<=(hprimearray[13]<0)?(-65536):65536;end
else if(abs13<step) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a1+b1)):(abs13*a1+b1);end
else if(abs13<step*2) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a2+b2)):(abs13*a2+b2);end 
else if(abs13<step*3) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a3+b3)):(abs13*a3+b3);end 
else if(abs13<step*4) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a4+b4)):(abs13*a4+b4);end 
else if(abs13<step*5) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a5+b5)):(abs13*a5+b5);end 
else if(abs13<step*6) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a6+b6)):(abs13*a6+b6);end 
else if(abs13<step*7) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a7+b7)):(abs13*a7+b7);end 
else if(abs13<step*8) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a8+b8)):(abs13*a8+b8);end 
else if(abs13<step*9) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a9+b9)):(abs13*a9+b9);end 
else if(abs13<step*10) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a10+b10)):(abs13*a10+b10);end 
else if(abs13<step*11) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a11+b11)):(abs13*a11+b11);end 
else if(abs13<step*12) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a12+b12)):(abs13*a12+b12);end 
else if(abs13<step*13) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a13+b13)):(abs13*a13+b13);end 
else if(abs13<step*14) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a14+b14)):(abs13*a14+b14);end 
else if(abs13<step*15) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a15+b15)):(abs13*a15+b15);end 
else if(abs13<step*16) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a16+b16)):(abs13*a16+b16);end 
else if(abs13<step*17) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a17+b17)):(abs13*a17+b17);end 
else if(abs13<step*18) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a18+b18)):(abs13*a18+b18);end 
else if(abs13<step*19) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a19+b19)):(abs13*a19+b19);end 
else if(abs13<step*20) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a20+b20)):(abs13*a20+b20);end 
else if(abs13<step*21) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a21+b21)):(abs13*a21+b21);end 
else if(abs13<step*22) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a22+b22)):(abs13*a22+b22);end 
else if(abs13<step*23) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a23+b23)):(abs13*a23+b23);end 
else if(abs13<step*24) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a24+b24)):(abs13*a24+b24);end 
else if(abs13<step*25) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a25+b25)):(abs13*a25+b25);end 
else if(abs13<step*26) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a26+b26)):(abs13*a26+b26);end 
else if(abs13<step*27) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a27+b27)):(abs13*a27+b27);end 
else if(abs13<step*28) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a28+b28)):(abs13*a28+b28);end 
else if(abs13<step*29) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a29+b29)):(abs13*a29+b29);end 
else if(abs13<step*30) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a30+b30)):(abs13*a30+b30);end 
else if(abs13<step*31) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a31+b31)):(abs13*a31+b31);end 
else if(abs13<step*32) begin harray[13]<=(hprimearray[13]<0)?(-(abs13*a32+b32)):(abs13*a32+b32);end
end 
//-------------class 14---------------
always @(*) begin
if(abs14>step*32)begin harray[14]<=(hprimearray[14]<0)?(-65536):65536;end
else if(abs14<step) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a1+b1)):(abs14*a1+b1);end
else if(abs14<step*2) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a2+b2)):(abs14*a2+b2);end 
else if(abs14<step*3) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a3+b3)):(abs14*a3+b3);end 
else if(abs14<step*4) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a4+b4)):(abs14*a4+b4);end 
else if(abs14<step*5) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a5+b5)):(abs14*a5+b5);end 
else if(abs14<step*6) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a6+b6)):(abs14*a6+b6);end 
else if(abs14<step*7) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a7+b7)):(abs14*a7+b7);end 
else if(abs14<step*8) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a8+b8)):(abs14*a8+b8);end 
else if(abs14<step*9) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a9+b9)):(abs14*a9+b9);end 
else if(abs14<step*10) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a10+b10)):(abs14*a10+b10);end 
else if(abs14<step*11) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a11+b11)):(abs14*a11+b11);end 
else if(abs14<step*12) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a12+b12)):(abs14*a12+b12);end 
else if(abs14<step*13) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a13+b13)):(abs14*a13+b13);end 
else if(abs14<step*14) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a14+b14)):(abs14*a14+b14);end 
else if(abs14<step*15) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a15+b15)):(abs14*a15+b15);end 
else if(abs14<step*16) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a16+b16)):(abs14*a16+b16);end 
else if(abs14<step*17) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a17+b17)):(abs14*a17+b17);end 
else if(abs14<step*18) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a18+b18)):(abs14*a18+b18);end 
else if(abs14<step*19) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a19+b19)):(abs14*a19+b19);end 
else if(abs14<step*20) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a20+b20)):(abs14*a20+b20);end 
else if(abs14<step*21) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a21+b21)):(abs14*a21+b21);end 
else if(abs14<step*22) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a22+b22)):(abs14*a22+b22);end 
else if(abs14<step*23) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a23+b23)):(abs14*a23+b23);end 
else if(abs14<step*24) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a24+b24)):(abs14*a24+b24);end 
else if(abs14<step*25) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a25+b25)):(abs14*a25+b25);end 
else if(abs14<step*26) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a26+b26)):(abs14*a26+b26);end 
else if(abs14<step*27) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a27+b27)):(abs14*a27+b27);end 
else if(abs14<step*28) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a28+b28)):(abs14*a28+b28);end 
else if(abs14<step*29) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a29+b29)):(abs14*a29+b29);end 
else if(abs14<step*30) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a30+b30)):(abs14*a30+b30);end 
else if(abs14<step*31) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a31+b31)):(abs14*a31+b31);end 
else if(abs14<step*32) begin harray[14]<=(hprimearray[14]<0)?(-(abs14*a32+b32)):(abs14*a32+b32);end
end 
//-------------class 15---------------
always @(*) begin
if(abs15>step*32)begin harray[15]<=(hprimearray[15]<0)?(-65536):65536;end
else if(abs15<step) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a1+b1)):(abs15*a1+b1);end
else if(abs15<step*2) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a2+b2)):(abs15*a2+b2);end 
else if(abs15<step*3) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a3+b3)):(abs15*a3+b3);end 
else if(abs15<step*4) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a4+b4)):(abs15*a4+b4);end 
else if(abs15<step*5) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a5+b5)):(abs15*a5+b5);end 
else if(abs15<step*6) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a6+b6)):(abs15*a6+b6);end 
else if(abs15<step*7) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a7+b7)):(abs15*a7+b7);end 
else if(abs15<step*8) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a8+b8)):(abs15*a8+b8);end 
else if(abs15<step*9) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a9+b9)):(abs15*a9+b9);end 
else if(abs15<step*10) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a10+b10)):(abs15*a10+b10);end 
else if(abs15<step*11) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a11+b11)):(abs15*a11+b11);end 
else if(abs15<step*12) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a12+b12)):(abs15*a12+b12);end 
else if(abs15<step*13) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a13+b13)):(abs15*a13+b13);end 
else if(abs15<step*14) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a14+b14)):(abs15*a14+b14);end 
else if(abs15<step*15) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a15+b15)):(abs15*a15+b15);end 
else if(abs15<step*16) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a16+b16)):(abs15*a16+b16);end 
else if(abs15<step*17) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a17+b17)):(abs15*a17+b17);end 
else if(abs15<step*18) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a18+b18)):(abs15*a18+b18);end 
else if(abs15<step*19) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a19+b19)):(abs15*a19+b19);end 
else if(abs15<step*20) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a20+b20)):(abs15*a20+b20);end 
else if(abs15<step*21) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a21+b21)):(abs15*a21+b21);end 
else if(abs15<step*22) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a22+b22)):(abs15*a22+b22);end 
else if(abs15<step*23) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a23+b23)):(abs15*a23+b23);end 
else if(abs15<step*24) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a24+b24)):(abs15*a24+b24);end 
else if(abs15<step*25) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a25+b25)):(abs15*a25+b25);end 
else if(abs15<step*26) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a26+b26)):(abs15*a26+b26);end 
else if(abs15<step*27) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a27+b27)):(abs15*a27+b27);end 
else if(abs15<step*28) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a28+b28)):(abs15*a28+b28);end 
else if(abs15<step*29) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a29+b29)):(abs15*a29+b29);end 
else if(abs15<step*30) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a30+b30)):(abs15*a30+b30);end 
else if(abs15<step*31) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a31+b31)):(abs15*a31+b31);end 
else if(abs15<step*32) begin harray[15]<=(hprimearray[15]<0)?(-(abs15*a32+b32)):(abs15*a32+b32);end 
end


endmodule