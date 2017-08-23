clear all;
m=10000;
x=zeros(m,80*1);
xaxis=1:80*1;
y=zeros(m,1);
num_labels=16;
rmax=10;
for i=1:m
center=randi(80); %random int number drawn from uniform distribution from 1 to 80
y(i)=floor(center/(80/15));
r=randi(rmax);
for j=1:80
    x(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
end
% for j=81:160
%     x(i,j)=(x(i,j-80))^2;
% end
end

[all_theta] = oneVsAll(x, y, num_labels);

% A=find(y==0);
% B=find(y==1);
% C=find(y==2);
% D=find(y==3);
% E=find(y==4);
% F=find(y==5);
% G=find(y==6);
% H=find(y==7);
% I=find(y==8);
% J=find(y==9);
% K=find(y==10);
% L=find(y==11);
% M=find(y==12);
% N=find(y==13);
% O=find(y==14);
% P=find(y==15);



mtest=100;
testx=zeros(mtest,80*1);
testy=zeros(mtest,1);
for i=1:mtest
center=randi(80); %random int number drawn from uniform distribution from 1 to 80
testy(i)=floor(center/(80/15));
r=randi(rmax);
for j=1:80
    testx(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
end
% for j=81:160
%     testx(i,j)=testx(i,j-80)^2;
% end
end

pred = predictOneVsAll(all_theta, x);
predtest = predictOneVsAll(all_theta, testx);
predtestApprox= predictOneVsAllApprox(all_theta, testx);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('\nTest Set Accuracy: %f\n', mean(double(predtest == testy)) * 100);
fprintf('\nTest Set Accuracy: %f\n', mean(double(predtestApprox == testy)) * 100);
% X = [ones(100, 1) testx];
% prediction=X*all_theta';
% sigmoid(prediction)
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