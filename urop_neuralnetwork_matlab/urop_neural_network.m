%initialization
clear ; close all; clc

%Setup the parameters you will use for this exercise
input_layer_size  = 80;  % 80 elements from the array
hidden_layer_size = 16;   % 16 hidden units
num_labels = 16;          % 16 labels, from 0 to 15   

%%generating training set
m=10000; %number of training example
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




initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);
initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];
fprintf('\nTraining Neural Network... \n')

%  After you have completed the assignment, change the MaxIter to a larger
%  value to see how more training helps.
options = optimset('MaxIter', 100);

%  You should also try different values of lambda
lambda = 1;

% Create "short hand" for the cost function to be minimized
costFunction = @(p) nnCostFunction(p, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, x, y, lambda);

% Now, costFunction is a function that takes in only one argument (the
% neural network parameters)
[nn_params, cost] = fmincg(costFunction, initial_nn_params, options);

% Obtain Theta1 and Theta2 back from nn_params
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

%%generating test sets
mtest=1000;
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
pred = predict(Theta1, Theta2, x);;
predtest =predict(Theta1, Theta2, testx); 
%predtestApprox= predict(Theta1, Theta2, X)
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('\nTest Set Accuracy: %f\n', mean(double(predtest == testy)) * 100);
%fprintf('\nTestApprox Set Accuracy: %f\n', mean(double(predtestApprox == testy)) * 100);

%[all_theta] = oneVsAll(x, y, num_labels);