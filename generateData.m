function [x,y] = generateData(m,c,size)
%generates x and y datasets that approximately fits for a straight line for a give m and c
%size = size of the output x and y vectors 
%generates positive y values only. x can be either positive or negative depending on m and c.

%Define x and y ranges to generate data
  if m == 0
    x1 = 0;
  else
    x1 = -c/m;
  end

%Set approximate x range to 5 * dataset size and define min and max 
  if m>=0
    x2 = x1+(size*5);
    x = (x2-x1).*rand(1,size)+x1;
  else
    x2 = x1-(size*5);
    x = (x1-x2).*rand(1,size)+x2;
  end
  
%define an error (er) to scatter data points around the line. maxError is the possible maximum error.
%maxError is estimated as a percentage of range y.
  y_range = abs(max((m*x)+c)-min((m.*x)+c));
  if y_range!=0
     maxError = abs(y_range)*(10/100);
  else
     maxError = 5;
  endif
  er = (maxError-0).*rand(1,size);
  
%generate a random boolean vector of size y to decide whether to add or subtract the error from the y coordinate.
  bool = randi(2,1,size)-1;
  
%if boolean value is zero, then we set it to -1. So that we can multiply error from 1 or -1 and then add to retrieve the y coordinates.
  bool(bool==0)=-1;
  
%target y is calculated and positive/negative error is added to it.
  targetY = m*x+c;
  a=er.*bool;
  y = targetY+a;
  
%set y to be positive values only
  y=max(y,0);
  disp(x);
  disp(y);
 
endfunction
