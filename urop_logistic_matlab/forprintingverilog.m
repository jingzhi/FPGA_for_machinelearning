for i=0:80
fprintf('mult m%d (\n\t.result(r%d), \n\t.dataa_0({25''b0,xarray[%d]}), \n\t.datab_0(THETA%d)\n);\n',i,i,i,i);
end

for i=0:80
    fprintf('wire [31:0] r%d;\n',i);
end

for i=0:80
    fprintf('+r%d',i);
end

for i=0:15
fprintf('innerproduct i%d(\n\t.xarray (xarray),\n\t.hprime (hprimearray[%d])\n\t);\n',i,i);
end

for i=0:15
fprintf('wire abs%d;\n',i);
end
for i=0:15
fprintf('assign abs%d=(hprimearray[%d]<0)?(-hprimearray[%d]):hprimearray[%d];\n',i,i,i,i);
end
for i=0:80
fprintf('assign r%d=xarray[%d]*THETA%d;\n',i,i,i);
end
for i=2:32
fprintf('else if(abs0<step*%d) begin assign harray[0]=(hprimearray[0]<0)?(-(abs0*a%d+b%d)):(abs0*a%d+b%d);end \n',i,i,i,i,i);
end
for i=1:32
fprintf('parameter a%d=%d; parameter b%d=%d;\n',i,coeffsfixpoint(i,1),i,coeffsfixpoint(i,2));
end
