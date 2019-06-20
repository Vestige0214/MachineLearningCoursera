function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

num_iters = length(theta);
temp = zeros(num_iters, 1);
temp2 = zeros(num_iters, 1);
grad = zeros(num_iters, 1);

theta_reg = theta(2:end,:);
J = (1/m)*sum(-y.*log(sigmoid(sum(theta'.*X, 2)))-(1.-y).*log(1.-sigmoid(sum(theta'.*X, 2)))) + (lambda/(2*m))*theta_reg'*theta_reg;
for iter=1:num_iters
  if iter == 1
    grad(iter) = (1/m) * (sigmoid(sum(theta'.*X, 2)) - y)'*X(:, iter);
  else
    grad(iter) = (1/m) * (sigmoid(sum(theta'.*X, 2)) - y)'*X(:, iter) + (lambda/m)*theta(iter);
end

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% =============================================================

end
