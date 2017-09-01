module sigmoid16(
	input signed [31:0] hprimearray[0:7],
	output  [31:0] harray[0:7]
);
parameter  step=72;
parameter a1=63; parameter b1=128;
parameter a2=59; parameter b2=130;
parameter a3=52; parameter b3=135;
parameter a4=43; parameter b4=145;
parameter a5=34; parameter b5=159;
parameter a6=26; parameter b6=174;
parameter a7=19; parameter b7=189;
parameter a8=14; parameter b8=203;
wire[31:0] abs0;
wire[31:0] abs1;
wire[31:0] abs2;
wire[31:0] abs3;
wire[31:0] abs4;
wire[31:0] abs5;
wire[31:0] abs6;
wire[31:0] abs7;
wire[31:0] abs8;
//wire[31:0] abs9;
//wire[31:0] abs10;
//wire[31:0] abs11;
//wire[31:0] abs12;
//wire[31:0] abs13;
//wire[31:0] abs14;
//wire[31:0] abs15;
assign abs0=hprimearray[0];
assign abs1=hprimearray[1];
assign abs2=hprimearray[2];
assign abs3=hprimearray[3];
assign abs4=hprimearray[4];
assign abs5=hprimearray[5];
assign abs6=hprimearray[6];
assign abs7=hprimearray[7];
//assign abs8=(hprimearray[8]<0)?(-hprimearray[8]):hprimearray[8];
//assign abs9=(hprimearray[9]<0)?(-hprimearray[9]):hprimearray[9];
//assign abs10=(hprimearray[10]<0)?(-hprimearray[10]):hprimearray[10];
//assign abs11=(hprimearray[11]<0)?(-hprimearray[11]):hprimearray[11];
//assign abs12=(hprimearray[12]<0)?(-hprimearray[12]):hprimearray[12];
//assign abs13=(hprimearray[13]<0)?(-hprimearray[13]):hprimearray[13];
//assign abs14=(hprimearray[14]<0)?(-hprimearray[14]):hprimearray[14];
//assign abs15=(hprimearray[15]<0)?(-hprimearray[15]):hprimearray[15];
//-------------class 0---------------
always @(*) begin
if((hprimearray[0]<0))begin harray[0]<=32'hffff0000 ; end
else if(abs0>step*8)begin harray[0]<=65536;end
else if(abs0<step) begin  harray[0]<=abs0*a1+b1;end
else if(abs0<step*2) begin  harray[0]<=abs0*a2+b2;end
else if(abs0<step*3) begin  harray[0]<=abs0*a3+b3;end
else if(abs0<step*4) begin  harray[0]<=abs0*a4+b4;end
else if(abs0<step*5) begin  harray[0]<=abs0*a5+b5;end
else if(abs0<step*6) begin  harray[0]<=abs0*a6+b6;end
else if(abs0<step*7) begin  harray[0]<=abs0*a7+b7;end
else if(abs0<step*8) begin  harray[0]<=abs0*a8+b8;end 
end 
//-------------class 1---------------
always @(*) begin
if((hprimearray[1]<0))begin harray[1]<=32'hffff0000 ; end
else if(abs1>step*8)begin harray[1]<=65536;end
else if(abs1<step) begin  harray[1]<=abs1*a1+b1;end
else if(abs1<step*2) begin  harray[1]<=abs1*a2+b2;end
else if(abs1<step*3) begin  harray[1]<=abs1*a3+b3;end
else if(abs1<step*4) begin  harray[1]<=abs1*a4+b4;end
else if(abs1<step*5) begin  harray[1]<=abs1*a5+b5;end
else if(abs1<step*6) begin  harray[1]<=abs1*a6+b6;end
else if(abs1<step*7) begin  harray[1]<=abs1*a7+b7;end
else if(abs1<step*8) begin  harray[1]<=abs1*a8+b8;end 
end 
//-------------class 2---------------
always @(*) begin
if((hprimearray[2]<0))begin harray[2]<=32'hffff0000 ; end
else if(abs2>step*8)begin harray[2]<=65536;end
else if(abs2<step) begin  harray[2]<=abs2*a1+b1;end
else if(abs2<step*2) begin  harray[2]<=abs2*a2+b2;end
else if(abs2<step*3) begin  harray[2]<=abs2*a3+b3;end
else if(abs2<step*4) begin  harray[2]<=abs2*a4+b4;end
else if(abs2<step*5) begin  harray[2]<=abs2*a5+b5;end
else if(abs2<step*6) begin  harray[2]<=abs2*a6+b6;end
else if(abs2<step*7) begin  harray[2]<=abs2*a7+b7;end
else if(abs2<step*8) begin  harray[2]<=abs2*a8+b8;end 
end 
//-------------class 3---------------
always @(*) begin
if((hprimearray[3]<0))begin harray[3]<=32'hffff0000 ; end
else if(abs3>step*8)begin harray[3]<=65536;end
else if(abs3<step) begin  harray[3]<=abs3*a1+b1;end
else if(abs3<step*2) begin  harray[3]<=abs3*a2+b2;end
else if(abs3<step*3) begin  harray[3]<=abs3*a3+b3;end
else if(abs3<step*4) begin  harray[3]<=abs3*a4+b4;end
else if(abs3<step*5) begin  harray[3]<=abs3*a5+b5;end
else if(abs3<step*6) begin  harray[3]<=abs3*a6+b6;end
else if(abs3<step*7) begin  harray[3]<=abs3*a7+b7;end
else if(abs3<step*8) begin  harray[3]<=abs3*a8+b8;end 
end 
//-------------class 4---------------
always @(*) begin
if((hprimearray[4]<0))begin harray[4]<=32'hffff0000 ; end
else if(abs4>step*8)begin harray[4]<=65536;end
else if(abs4<step) begin  harray[4]<=abs4*a1+b1;end
else if(abs4<step*2) begin  harray[4]<=abs4*a2+b2;end
else if(abs4<step*3) begin  harray[4]<=abs4*a3+b3;end
else if(abs4<step*4) begin  harray[4]<=abs4*a4+b4;end
else if(abs4<step*5) begin  harray[4]<=abs4*a5+b5;end
else if(abs4<step*6) begin  harray[4]<=abs4*a6+b6;end
else if(abs4<step*7) begin  harray[4]<=abs4*a7+b7;end
else if(abs4<step*8) begin  harray[4]<=abs4*a8+b8;end 
end  
//-------------class 5---------------
always @(*) begin
if((hprimearray[5]<0))begin harray[5]<=32'hffff0000 ; end
else if(abs5>step*8)begin harray[5]<=65536;end
else if(abs5<step) begin  harray[5]<=abs5*a1+b1;end
else if(abs5<step*2) begin  harray[5]<=abs5*a2+b2;end
else if(abs5<step*3) begin  harray[5]<=abs5*a3+b3;end
else if(abs5<step*4) begin  harray[5]<=abs5*a4+b4;end
else if(abs5<step*5) begin  harray[5]<=abs5*a5+b5;end
else if(abs5<step*6) begin  harray[5]<=abs5*a6+b6;end
else if(abs5<step*7) begin  harray[5]<=abs5*a7+b7;end
else if(abs5<step*8) begin  harray[5]<=abs5*a8+b8;end 
end 
//-------------class 6---------------
always @(*) begin
if((hprimearray[6]<0))begin harray[6]<=32'hffff0000 ; end
else if(abs6>step*8)begin harray[6]<=65536;end
else if(abs6<step) begin  harray[6]<=abs6*a1+b1;end
else if(abs6<step*2) begin  harray[6]<=abs6*a2+b2;end
else if(abs6<step*3) begin  harray[6]<=abs6*a3+b3;end
else if(abs6<step*4) begin  harray[6]<=abs6*a4+b4;end
else if(abs6<step*5) begin  harray[6]<=abs6*a5+b5;end
else if(abs6<step*6) begin  harray[6]<=abs6*a6+b6;end
else if(abs6<step*7) begin  harray[6]<=abs6*a7+b7;end
else if(abs6<step*8) begin  harray[6]<=abs6*a8+b8;end 
end 
//-------------class 7---------------
always @(*) begin
if((hprimearray[7]<0))begin harray[7]<=32'hffff0000 ; end
else if(abs7>step*8)begin harray[7]<=65536;end
else if(abs7<step) begin  harray[7]<=abs7*a1+b1;end
else if(abs7<step*2) begin  harray[7]<=abs7*a2+b2;end
else if(abs7<step*3) begin  harray[7]<=abs7*a3+b3;end
else if(abs7<step*4) begin  harray[7]<=abs7*a4+b4;end
else if(abs7<step*5) begin  harray[7]<=abs7*a5+b5;end
else if(abs7<step*6) begin  harray[7]<=abs7*a6+b6;end
else if(abs7<step*7) begin  harray[7]<=abs7*a7+b7;end
else if(abs7<step*8) begin  harray[7]<=abs7*a8+b8;end 
end 
////-------------class 8---------------
//always @(*) begin
//if(abs8>step*16)begin harray[8]<=65536;end
//else if(abs8<step*2) begin  harray[8]<=abs8*a2+b2;end
//else if(abs8<step*3) begin  harray[8]<=abs8*a3+b3;end
//else if(abs8<step*4) begin  harray[8]<=abs8*a4+b4;end
//else if(abs8<step*5) begin  harray[8]<=abs8*a5+b5;end
//else if(abs8<step*6) begin  harray[8]<=abs8*a6+b6;end
//else if(abs8<step*7) begin  harray[8]<=abs8*a7+b7;end
//else if(abs8<step*8) begin  harray[8]<=abs8*a8+b8;end
//else if(abs8<step*9) begin  harray[8]<=abs8*a9+b9;end
//else if(abs8<step*10) begin  harray[8]<=abs8*a10+b10;end
//else if(abs8<step*11) begin  harray[8]<=abs8*a11+b11;end
//else if(abs8<step*12) begin  harray[8]<=abs8*a12+b12;end
//else if(abs8<step*13) begin  harray[8]<=abs8*a13+b13;end
//else if(abs8<step*14) begin  harray[8]<=abs8*a14+b14;end
//else if(abs8<step*15) begin  harray[8]<=abs8*a15+b15;end
//else if(abs8<step*16) begin  harray[8]<=abs8*a16+b16;end
//if(hprimearray[8]<0) harray[8]<=-harray[8];
//end
////-------------class 9---------------
//always @(*) begin
//if(abs9>step*16)begin harray[9]<=65536;end
//else if(abs9<step*2) begin  harray[9]<=abs9*a2+b2;end
//else if(abs9<step*3) begin  harray[9]<=abs9*a3+b3;end
//else if(abs9<step*4) begin  harray[9]<=abs9*a4+b4;end
//else if(abs9<step*5) begin  harray[9]<=abs9*a5+b5;end
//else if(abs9<step*6) begin  harray[9]<=abs9*a6+b6;end
//else if(abs9<step*7) begin  harray[9]<=abs9*a7+b7;end
//else if(abs9<step*8) begin  harray[9]<=abs9*a8+b8;end
//else if(abs9<step*9) begin  harray[9]<=abs9*a9+b9;end
//else if(abs9<step*10) begin  harray[9]<=abs9*a10+b10;end
//else if(abs9<step*11) begin  harray[9]<=abs9*a11+b11;end
//else if(abs9<step*12) begin  harray[9]<=abs9*a12+b12;end
//else if(abs9<step*13) begin  harray[9]<=abs9*a13+b13;end
//else if(abs9<step*14) begin  harray[9]<=abs9*a14+b14;end
//else if(abs9<step*15) begin  harray[9]<=abs9*a15+b15;end
//else if(abs9<step*16) begin  harray[9]<=abs9*a16+b16;end
//if(hprimearray[9]<0) harray[9]<=-harray[9];
//end
////-------------class 10---------------
//always @(*) begin
//if(abs10>step*16)begin harray[10]<=65536;end
//else if(abs10<step*2) begin  harray[10]<=abs10*a2+b2;end
//else if(abs10<step*3) begin  harray[10]<=abs10*a3+b3;end
//else if(abs10<step*4) begin  harray[10]<=abs10*a4+b4;end
//else if(abs10<step*5) begin  harray[10]<=abs10*a5+b5;end
//else if(abs10<step*6) begin  harray[10]<=abs10*a6+b6;end
//else if(abs10<step*7) begin  harray[10]<=abs10*a7+b7;end
//else if(abs10<step*8) begin  harray[10]<=abs10*a8+b8;end
//else if(abs10<step*9) begin  harray[10]<=abs10*a9+b9;end
//else if(abs10<step*10) begin  harray[10]<=abs10*a10+b10;end
//else if(abs10<step*11) begin  harray[10]<=abs10*a11+b11;end
//else if(abs10<step*12) begin  harray[10]<=abs10*a12+b12;end
//else if(abs10<step*13) begin  harray[10]<=abs10*a13+b13;end
//else if(abs10<step*14) begin  harray[10]<=abs10*a14+b14;end
//else if(abs10<step*15) begin  harray[10]<=abs10*a15+b15;end
//else if(abs10<step*16) begin  harray[10]<=abs10*a16+b16;end
//if(hprimearray[10]<0) harray[10]<=-harray[10];
//end
////-------------class 11---------------
//always @(*) begin
//if(abs11>step*16)begin harray[11]<=65536;end
//else if(abs11<step*2) begin  harray[11]<=abs11*a2+b2;end
//else if(abs11<step*3) begin  harray[11]<=abs11*a3+b3;end
//else if(abs11<step*4) begin  harray[11]<=abs11*a4+b4;end
//else if(abs11<step*5) begin  harray[11]<=abs11*a5+b5;end
//else if(abs11<step*6) begin  harray[11]<=abs11*a6+b6;end
//else if(abs11<step*7) begin  harray[11]<=abs11*a7+b7;end
//else if(abs11<step*8) begin  harray[11]<=abs11*a8+b8;end
//else if(abs11<step*9) begin  harray[11]<=abs11*a9+b9;end
//else if(abs11<step*10) begin  harray[11]<=abs11*a10+b10;end
//else if(abs11<step*11) begin  harray[11]<=abs11*a11+b11;end
//else if(abs11<step*12) begin  harray[11]<=abs11*a12+b12;end
//else if(abs11<step*13) begin  harray[11]<=abs11*a13+b13;end
//else if(abs11<step*14) begin  harray[11]<=abs11*a14+b14;end
//else if(abs11<step*15) begin  harray[11]<=abs11*a15+b15;end
//else if(abs11<step*16) begin  harray[11]<=abs11*a16+b16;end
//if(hprimearray[11]<0) harray[11]<=-harray[11];
//end 
////-------------class 12---------------
//always @(*) begin
//if(abs12>step*16)begin harray[12]<=65536;end
//else if(abs12<step*2) begin  harray[12]<=abs12*a2+b2;end
//else if(abs12<step*3) begin  harray[12]<=abs12*a3+b3;end
//else if(abs12<step*4) begin  harray[12]<=abs12*a4+b4;end
//else if(abs12<step*5) begin  harray[12]<=abs12*a5+b5;end
//else if(abs12<step*6) begin  harray[12]<=abs12*a6+b6;end
//else if(abs12<step*7) begin  harray[12]<=abs12*a7+b7;end
//else if(abs12<step*8) begin  harray[12]<=abs12*a8+b8;end
//else if(abs12<step*9) begin  harray[12]<=abs12*a9+b9;end
//else if(abs12<step*10) begin  harray[12]<=abs12*a10+b10;end
//else if(abs12<step*11) begin  harray[12]<=abs12*a11+b11;end
//else if(abs12<step*12) begin  harray[12]<=abs12*a12+b12;end
//else if(abs12<step*13) begin  harray[12]<=abs12*a13+b13;end
//else if(abs12<step*14) begin  harray[12]<=abs12*a14+b14;end
//else if(abs12<step*15) begin  harray[12]<=abs12*a15+b15;end
//else if(abs12<step*16) begin  harray[12]<=abs12*a16+b16;end
//if(hprimearray[12]<0) harray[12]<=-harray[12];
//end 
////-------------class 13---------------
//always @(*) begin
//if(abs13>step*16)begin harray[13]<=65536;end
//else if(abs13<step*2) begin  harray[13]<=abs13*a2+b2;end
//else if(abs13<step*3) begin  harray[13]<=abs13*a3+b3;end
//else if(abs13<step*4) begin  harray[13]<=abs13*a4+b4;end
//else if(abs13<step*5) begin  harray[13]<=abs13*a5+b5;end
//else if(abs13<step*6) begin  harray[13]<=abs13*a6+b6;end
//else if(abs13<step*7) begin  harray[13]<=abs13*a7+b7;end
//else if(abs13<step*8) begin  harray[13]<=abs13*a8+b8;end
//else if(abs13<step*9) begin  harray[13]<=abs13*a9+b9;end
//else if(abs13<step*10) begin  harray[13]<=abs13*a10+b10;end
//else if(abs13<step*11) begin  harray[13]<=abs13*a11+b11;end
//else if(abs13<step*12) begin  harray[13]<=abs13*a12+b12;end
//else if(abs13<step*13) begin  harray[13]<=abs13*a13+b13;end
//else if(abs13<step*14) begin  harray[13]<=abs13*a14+b14;end
//else if(abs13<step*15) begin  harray[13]<=abs13*a15+b15;end
//else if(abs13<step*16) begin  harray[13]<=abs13*a16+b16;end
//if(hprimearray[13]<0) harray[13]<=-harray[13];
//end 
////-------------class 14---------------
//always @(*) begin
//if(abs14>step*16)begin harray[14]<=65536;end
//else if(abs14<step*2) begin  harray[14]<=abs14*a2+b2;end
//else if(abs14<step*3) begin  harray[14]<=abs14*a3+b3;end
//else if(abs14<step*4) begin  harray[14]<=abs14*a4+b4;end
//else if(abs14<step*5) begin  harray[14]<=abs14*a5+b5;end
//else if(abs14<step*6) begin  harray[14]<=abs14*a6+b6;end
//else if(abs14<step*7) begin  harray[14]<=abs14*a7+b7;end
//else if(abs14<step*8) begin  harray[14]<=abs14*a8+b8;end
//else if(abs14<step*9) begin  harray[14]<=abs14*a9+b9;end
//else if(abs14<step*10) begin  harray[14]<=abs14*a10+b10;end
//else if(abs14<step*11) begin  harray[14]<=abs14*a11+b11;end
//else if(abs14<step*12) begin  harray[14]<=abs14*a12+b12;end
//else if(abs14<step*13) begin  harray[14]<=abs14*a13+b13;end
//else if(abs14<step*14) begin  harray[14]<=abs14*a14+b14;end
//else if(abs14<step*15) begin  harray[14]<=abs14*a15+b15;end
//else if(abs14<step*16) begin  harray[14]<=abs14*a16+b16;end
//if(hprimearray[14]<0) harray[14]<=-harray[14];
//end 
////-------------class 15---------------
//always @(*) begin
//if(abs15>step*16)begin harray[15]<=65536;end
//else if(abs15<step*2) begin  harray[15]<=abs15*a2+b2;end
//else if(abs15<step*3) begin  harray[15]<=abs15*a3+b3;end
//else if(abs15<step*4) begin  harray[15]<=abs15*a4+b4;end
//else if(abs15<step*5) begin  harray[15]<=abs15*a5+b5;end
//else if(abs15<step*6) begin  harray[15]<=abs15*a6+b6;end
//else if(abs15<step*7) begin  harray[15]<=abs15*a7+b7;end
//else if(abs15<step*8) begin  harray[15]<=abs15*a8+b8;end
//else if(abs15<step*9) begin  harray[15]<=abs15*a9+b9;end
//else if(abs15<step*10) begin  harray[15]<=abs15*a10+b10;end
//else if(abs15<step*11) begin  harray[15]<=abs15*a11+b11;end
//else if(abs15<step*12) begin  harray[15]<=abs15*a12+b12;end
//else if(abs15<step*13) begin  harray[15]<=abs15*a13+b13;end
//else if(abs15<step*14) begin  harray[15]<=abs15*a14+b14;end
//else if(abs15<step*15) begin  harray[15]<=abs15*a15+b15;end
//else if(abs15<step*16) begin  harray[15]<=abs15*a16+b16;end
//if(hprimearray[15]<0) harray[15]<=-harray[15];
//end


endmodule