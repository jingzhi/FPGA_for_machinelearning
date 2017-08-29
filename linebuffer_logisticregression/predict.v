module predict(
	input [31:0] harray[0:15],
	output[3:0]y
	
);
reg [3:0] indexcounter;
reg [3:0] maxindex;
reg [31:0] maxcontent;
assign y=maxindex;
always @(*)begin
		if(maxcontent<harray[indexcounter])begin
			maxcontent<=harray[indexcounter];
			maxindex<=indexcounter;
			indexcounter=indexcounter+1;
		end
			
end

endmodule