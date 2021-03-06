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
st=size(theta)
for i=1:m,
    x=X(i,:);
    %sx=size(x)
    J=J+((-y(i)*log(sigmoid((theta'*x'))))-((1-y(i))*log(1-sigmoid((theta'*x')))));
end
J=J/m;

n=size(grad);
for j=1:n,
    for i=1:m,
      %x=X(i,:); 
      %x(j)
      grad(j)=grad(j)+((sigmoid((theta'*(X(i,:)')))-y(i))*X(i,j));
    end
    
    grad(j)=grad(j)/m;
end


end
