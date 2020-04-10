function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


 
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    delta=X' * (X*theta - y); % vi day la cong ma tran, nen tung hang da duoc cong
    % don^` vao` roi, nen ket qua tra ve cua no la mot matran nx1
    % 
    delta=(delta)./m;        
    disp(delta)
    theta = theta - alpha.*delta;
    % ============================================================       
    
    % Save the cost J in every iteration   
    
    %GD: theta = theta - alpha* deri(J)
    % =theta - alpha* delta
    %delta = 1/m * sum( Htheta(x) - y)) * X
    
    J_history(iter) = computeCost(X, y, theta);
   

end

end
