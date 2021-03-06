function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
n = size(X, 2);
num_units_seclayer = size(Theta1, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

a1 = [ones(m, 1) X];

a2 = zeros(num_units_seclayer, m);

for c = 1: num_units_seclayer
    a2(c, :) = sigmoid(Theta1(c, :) * a1');
end

a2 = [ones(m,1) a2'];

a3 = zeros(num_labels, m);

for d = 1: num_labels
    a3(d, :) = sigmoid(Theta2(d, :) * a2');
end

a3 = a3';

[max p] = max(a3, [], 2);





% =========================================================================


end
