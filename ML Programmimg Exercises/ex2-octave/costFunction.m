function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% Dimensions of all the vectors and matrices needed for computation to make algorithm clear
% X = ( 100x3 )
% y = ( 100x1 )
% theta = ( 3x1 )
% grad = ( 3x1 )  Same as theta

h_theta_x = sigmoid(X*theta);
% Cost
J = (-1/m)*sum(y.*log(h_theta_x) + (1-y).*(log(1-h_theta_x)));
% Gradient
grad = (1/m)*(X'*(h_theta_x-y));

% =============================================================

end
