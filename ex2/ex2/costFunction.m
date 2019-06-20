function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

num_iters = length(theta);
temp = zeros(num_iters, 1);
temp2 = zeros(num_iters, 1);
grad = zeros(num_iters, 1);


J = (1/m)*sum(-y.*log(sigmoid(sum(theta'.*X, 2)))-(1.-y).*log(1.-sigmoid(sum(theta'.*X, 2))));
for iter=1:num_iters
  grad(iter) = (1/m) * (sigmoid(sum(theta'.*X, 2)) - y)'*X(:, iter);
end
% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%



% =============================================================

end
