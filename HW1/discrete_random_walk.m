% diffusion on a grid via a random walk

% create a vector of numbers
N = 1000; % number of objects
X = zeros(N,1); % initial position


lambda = 0.1; % Probability of movement
M = 100;  % number of time steps
XS = zeros(N,M);
c = [lambda,2*lambda,1];

% Specify the movement vector
xm(1) = 1;
xm(2) = -1;
xm(3) = 0;

for j = 1:M
    R = rand(N,1);
    for k = 1:N
       ndx= min(find(R(k)<=c));
       X(k) = X(k) + xm(ndx);
       XS(:,j) = X;
    end
    
    figure(1)
  hist(X,[-20:20])
  axis([-25 25 0 300])
  pause(0.1)
  
end
figure(2)
plot(XS')


