module hprime(
	input  [31:0] xarray [0:40],
	output  [31:0] hprimearray [0:7],
	input clock
);
innerproduct0 i0(
	//.clock(clock),
	.xarray (xarray),
	.hprime (hprimearray[0])
	);
innerproduct1 i1(
	.xarray (xarray),
	//.clock(clock),
	.hprime (hprimearray[1])
	);
innerproduct2 i2(
	.xarray (xarray),
	.hprime (hprimearray[2])
	);
innerproduct3 i3(
	.xarray (xarray),
	.hprime (hprimearray[3]),
	);
innerproduct4 i4(
	.xarray (xarray),
	.hprime (hprimearray[4])
	);
innerproduct5 i5(
	.xarray (xarray),
	.hprime (hprimearray[5])
	);
innerproduct6 i6(
	.xarray (xarray),
	.hprime (hprimearray[6])
	);
innerproduct7 i7(
	.xarray (xarray),
	.hprime (hprimearray[7])
	);

endmodule