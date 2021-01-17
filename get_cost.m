function cost  = get_cost(target,X,weights)
  weights_by_transpose_x = weights*transpose(X);
  errors = weights_by_transpose_x - target;
  squared_error = errors.^2;
  cost = (1/(2*size(X,1)))*sum(squared_error);
end