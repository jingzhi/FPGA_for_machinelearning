clear all
step=3.0/32;
axis=0:0.0001:3-0.0001;
axis32=floor((axis./step))*step;
axis32index=floor((axis./step))+1;
hold on
plot(axis,sigmoid(axis))

y=zeros(33,1);
x=ones(33,2);
for i=1:33
    y(i)=sigmoid((i-1)*step);
    x(i,1)=(i-1)*step;
end
% bar(x(:,1),y)
coeffs=zeros(32,2);

for i=1:32
    c=(x(i:i+1,:))\[y(i);y(i+1)];
    coeffs(i,1)=c(1);
    coeffs(i,2)=c(2);
end
% y=sum(inputx.*coeffs,2);
approxy=zeros(1,30000);
for i=1:30000
approxy(i)=axis32(i)*coeffs(axis32index(i),1)+coeffs(axis32index(i),2);
end

plot(axis32,approxy)