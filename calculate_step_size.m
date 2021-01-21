function [thetas,costs] = calculate_step_size(X,y,thetas,alpha,iterations)
  m = size(y,1);
  costs = zeros(iterations,1);
  i = 1;
  #hypothesis = X * thetas;
  for it = 1:iterations
    predicted = X*thetas;
    fprintf("m = %d\n",m);
    thetas = thetas - ((alpha/m) * transpose(X) * (predicted-y));
    %disp(transpose(X)*(predicted-y));
    %disp((alpha/m) * transpose(X) * (predicted-y));
    disp(thetas);
    costs(i) = get_cost(X,y,thetas);
    i=i+1;
  endfor
end