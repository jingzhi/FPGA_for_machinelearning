module predict(
	input signed [31:0] harray[0:7],
	output[2:0]y,
	input clock
	
);
assign y=g;
//always @(posedge clock)begin
//		if(harray[indexcounter] [31] > 0)begin
//			if(harray[indexcounter] [15:0] > maxcontent[15:0])begin
//			maxcontent[15:0]<=harray[indexcounter] [15:0];
//			maxindex<=indexcounter;end
//		end
//			if(indexcounter== 7) indexcounter<=0;
//			else indexcounter<=indexcounter+1;
//			
//end
reg [2:0] a;reg [2:0] b;
reg [2:0] c;reg [2:0] d;
reg [2:0] e;reg [2:0] f;
reg [2:0] g;

always @(posedge clock)begin
a=(harray[0]>harray[1])?0:1;
b=(harray[2]>harray[3])?2:3;
c=(harray[4]>harray[5])?4:5;
d=(harray[6]>harray[7])?6:7;

e=(harray[a]>harray[b])?a:b;
f=(harray[c]>harray[d])?c:d;

g=(harray[f]>harray[e])?f:e;
end

endmodule