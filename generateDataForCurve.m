function [x,y] = generateDataForCurve(a,b,c,dataset_size)
  x1 = 0;
  x = (dataset_size*4).*rand(1,dataset_size)+x1;
  disp(x);
  targetY = a.*x.^2+b.*x+c;
  maxY = abs(max(targetY)-min(targetY));
  disp(maxY);
  maxError = maxY*(5/100);
  disp(maxError);
  er = (maxError-0).*rand(1,dataset_size);
  bool = randi(2,1,dataset_size)-1;
  disp(bool);
  bool(bool==0)=-1;
  
  a=er.*bool;
  y = targetY+a;
endfunction
