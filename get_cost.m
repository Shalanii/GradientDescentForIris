function cost  = get_cost(X,target,thetas)
  predicted = X*thetas;
  squared_error = (predicted-target).^2;
  %disp("SQ ERR");
  %disp(squared_error);
  cost = (1/(2*size(X,1)))*sum(squared_error);
  %cost = squared_error;
end