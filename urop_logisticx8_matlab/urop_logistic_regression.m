clear all;
m=10000;
x=zeros(m,80*1);
x40=zeros(m,40*1);
xaxis=1:80*1;
y=zeros(m,1);
num_labels=8;
rmax=10;

for i=1:m
center=randi(79); %random int number drawn from uniform distribution from 1 to 80
y(i)=floor(center/(80/8));
r=randi(rmax)+1;
for j=1:80
    x(i,j)=round(real(sqrt((r)^2-(j-center)^2)));
end
% for j=81:160
%     x(i,j)=(x(i,j-80))^2;
% end
end
% for i=1:m
% center=randi(80); %random int number drawn from uniform distribution from 1 to 80
% y(i)=floor(center/(80/7));
% length=randi(rmax);
% for j=1:80
%     x(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
% end
% % for j=81:160
% %     x(i,j)=(x(i,j-80))^2;
% % end
% end

for j=1:m
for i=1:40
    x40(j,i)=x(j,2*i)+x(j,2*i-1);
end
end
[all_theta] = oneVsAll(x40, y, num_labels);

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


rmaxtest=3;
mtest=100;
testx=zeros(mtest,80*1);
testx40=zeros(mtest,40*1);
testy=zeros(mtest,1);
for i=1:mtest
center=randi(79); %random int number drawn from uniform distribution from 1 to 80
testy(i)=floor(center/(80/8));
r=randi(rmaxtest);
for j=1:80
    testx(i,j)=2*round(real(sqrt((r)^2-(j-center)^2)));
end
% for j=81:160
%     testx(i,j)=testx(i,j-80)^2;
% end
end
for j=1:mtest
for i=1:40
    testx40(j,i)=testx(j,2*i)+testx(j,2*i-1);
end
end
pred = predictOneVsAll(all_theta, x40);
predtest = predictOneVsAll(all_theta, testx40);
predtestApprox= predictOneVsAllApprox(all_theta, testx40);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('\nTest Set Accuracy: %f\n', mean(double(predtest == testy)) * 100);
fprintf('\nTestApprox Set Accuracy: %f\n', mean(double(predtestApprox == testy)) * 100);
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