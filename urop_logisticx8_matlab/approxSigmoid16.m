function g = approxSigmoid16(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
step=3.0/16;
y=zeros(17,1);
x=ones(17,2);
for i=1:17
    y(i)=sigmoid((i-1)*step);
    x(i,1)=(i-1)*step;
end
% bar(x(:,1),y)
coeffs=zeros(16,2);

for i=1:16
    c=(x(i:i+1,:))\[y(i);y(i+1)];
    coeffs(i,1)=c(1);
    coeffs(i,2)=c(2);
end

thres=ones(16,1);
for i=1:16
    thres(i,1)=(i)*step;
end
for i=1:size(z,1)
    for k=1:size(z,2)
    found=0;
        for j=1:16
            if(~found&&abs(z(i,k))<thres(j))
                g(i,k)=abs(z(i,k))*coeffs(j,1)+coeffs(j,2);
                found=1;
            end
            if(~found&&abs(z(i,k))>thres(16))
                g(i,k)=1;
                found=1;
            end
        end
            if(z(i,k))<0
                g(i,k)=-g(i,k);
            end
    end
    
end

% =============================================================

end
