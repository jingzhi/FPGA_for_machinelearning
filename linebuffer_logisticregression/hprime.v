module hprime(
	input [31:0] xarray [0:80],
	output[31:0] hprimearray [0:15]
);
innerproduct0 i0(
	.xarray (xarray),
	.hprime (hprimearray[0])
	);
innerproduct1 i1(
	.xarray (xarray),
	.hprime (hprimearray[1])
	);
innerproduct2 i2(
	.xarray (xarray),
	.hprime (hprimearray[2])
	);
innerproduct3 i3(
	.xarray (xarray),
	.hprime (hprimearray[3])
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
innerproduct8 i8(
	.xarray (xarray),
	.hprime (hprimearray[8])
	);
innerproduct9 i9(
	.xarray (xarray),
	.hprime (hprimearray[9])
	);
innerproduct10 i10(
	.xarray (xarray),
	.hprime (hprimearray[10])
	);
innerproduct11 i11(
	.xarray (xarray),
	.hprime (hprimearray[11])
	);
innerproduct12 i12(
	.xarray (xarray),
	.hprime (hprimearray[12])
	);
innerproduct13 i13(
	.xarray (xarray),
	.hprime (hprimearray[13])
	);
innerproduct14 i14(
	.xarray (xarray),
	.hprime (hprimearray[14])
	);
innerproduct15 i15(
	.xarray (xarray),
	.hprime (hprimearray[15])
	);

endmodule