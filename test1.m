Y = [0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3,0.2,0.4,0.2,0.5,0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.4,0.1,0.2,0.1,0.2,0.2,0.1,0.2,0.2,0.3,0.3,0.2,0.6,0.4,0.3,0.2,0.2,0.2,0.2,1.4,1.5,1.5,1.3,1.5,1.3,1.6,1,1.3,1.4,1,1.5,1,1.4,1.3,1.4,1.5,1,1.5,1.1,1.8,1.3,1.5,1.2,1.3,1.4,1.4,1.7,1.5,1,1.1,1,1.2,1.6,1.5,1.6,1.5,1.3,1.3,1.3,1.2,1.4,1.2,1,1.3,1.2,1.3,1.3,1.1,1.3,2.5,1.9,2.1,1.8,2.2,2.1,1.7,1.8,1.8,2.5,2,1.9,2.1,2,2.4,2.3,1.8,2.2,2.3,1.5,2.3,2,2,1.8,2.1,1.8,1.8,1.8,2.1,1.6,1.9,2,2.2,1.5,1.4,2.3,2.4,1.8,1.8,2.1,2.4,2.3,1.9,2.3,2.5,2.3,1.9,2,2.3,1.8];
target = transpose(Y);
Q = get_dataset();
alpha = 0.004;
iterations = 30;
i = 0;
R = ones(size(Q,1),1);
S = [R Q];
thetas = ones(size(S,2),1);
#weights = zeros(1,size(S,2));
Y = transpose(target);
stop = 0;
#weights = transpose(thetas)*S;
#cost = get_cost(S,target,thetas);

%should plot gradient versus error


  


[new_thetas,costs] = calculate_step_size(S,target,thetas,alpha,iterations);
disp(new_thetas);
%plot(1:iterations,costs,'-x');
%hold on

x1 = S(:,1);
y1 = S(:,2);
z1 = S(:,3);
c1 = S(:,4);

plot(x1,costs);

if min(x1)<min(y1)
  minimum = x1;
else
  minimum = y1;
endif

if max(x1)>max(y1)
  maximum = x1;
else
  maximum = y1;
endif

minimum = min(min(S));
maximum = max(max(S));


#[X1,Y1,Z1,C1] = ndgrid(minimum:0.2:maximum,minimum:0.2:maximum,minimum:0.2:maximum,minimum:0.2:maximum);
[X2,Y2] = meshgrid(x1,y1);

Z = transpose(new_thetas)*transpose(S);
ZZ = [Z; Z; Z];
%plot3(x1,y1,Z,'-x');
%hold on
%plot3(x1,z1,Z,'-x');
%hold on
%plot3(x1,c1,Z,'-x');
%hold on
%plot3(y1,z1,Z,'-x');
#contour(X1,Y1,Z1,C1,Z);
#surf(X2,Y2,ZZ);
#plot(target, S*new_thetas, '*');

%h(x)=beta transpose * x

w_a = 0;
w_b = 0;
w_c = 0;
w_d = 0;
alpha = 0.01;

