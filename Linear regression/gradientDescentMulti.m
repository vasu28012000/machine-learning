function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    h=X*theta;
    for i=1:columns(X)
      err=sum((h.-y).*X(:,i));
      theta(i)=theta(i)-alpha*(1/m)*err;
    endfor
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
