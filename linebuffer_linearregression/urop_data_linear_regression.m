clear all;
m=100000;
x=zeros(m,80*2);
theta=zeros(80*2,1);
xaxis=1:80*2;
y=zeros(m,1);

rmax=10;
for i=1:m
center=randi(80); %random int number drawn from uniform distribution from 1 to 80
y(i)=floor(center/(80/16));
r=randi(rmax);
for j=1:80
    x(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
end
for j=81:160
    x(i,j)=(x(i,j-80))^2;
end
end
%add noise
for i=1:5
    x(randi(m),randi(80))=x(i,j)+randi(2);
end

% hold on;
% for i=1:10
% plot(xaxis,x(i,:));
% end


theta=pinv(x'*x)*x'*y;

mtest=500;
testx=zeros(mtest,80*2);
testy=zeros(mtest,1);
for i=1:mtest
center=randi(80); %random int number drawn from uniform distribution from 1 to 80
testy(i)=floor(center/(80/16));
r=randi(rmax);
for j=1:80
    testx(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
end
for j=81:160
    testx(i,j)=testx(i,j-80)^2;
end
end
testpredict=floor(testx*theta);
testaccuracy=mean(double(testpredict==testy)*100)
predict=floor(x*theta);
error=mean(double(predict==y)*100)




% axis=1:80;
% plot(axis,theta(1:80));
% 
% for i=1:160
% fprintf('parameter THETA%d = %d; \n',i,floor(theta(i)*1000))
% end
% 
% for i=1:160
% fprintf('\t\t\t assign multresults[%d]=xarray[%d]*THETA%d; \n',i,i,i)
% end
% 
% for i=1:160
% fprintf('multresults[%d]+',i)
% end