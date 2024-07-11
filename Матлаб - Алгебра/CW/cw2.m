%% number 1
####roh*(1-eps*cos(phi)) + 2 = 0
##figure('Name', 'Number 1', 'NumberTitle', 'off')
##
##hold on;
##grid on;
##phi = -2*pi:0.1*pi:2*pi;
##
##eps = 0.5;
##roh = (-2) ./ (1 - eps * cos(phi));
##[x, y] = pol2cart(phi, roh);
##plot(x, y)
##
##eps = 1.5;
##roh = (-2) ./ (1 - eps * cos(phi));
##[x, y] = pol2cart(phi, roh);
##plot(x, y)
##
##eps = 2.5;
##roh = (-2) ./ (1 - eps * cos(phi));
##[x, y] = pol2cart(phi, roh);
##plot(x, y)
##legend("eps = 0.5", "eps = 1.5", "eps = 2.5")
%% number 2

a = [3 0 1];
b = [0.5 3 -0.1];
c = [0 -1 2.5];

ans = dot(a, cross(b, c))

%% number 3

##a = [1 2 2];
##b = [3 3 4];
##c = [5 5 5];
##
##ans = abs(dot(a, cross(b, c)))

%% number 4

##A = [1 2 1; 3 5 6];
##b = [4; 8];
##x = A\b;
##A*x
##isequal(round(A*x), b)

%% number 5
##
##a = input('a = ');
##a(a~=max(a)) = max(a);
##disp(num2str(a));

%% number 6

A = [4 4 8; 5 6 7; 6 4 2];
[x, y] = eig(A);
eigenvalue1 = y(1, 1)
eigenvalue2 = y(2, 2)
eigenvalue3 = y(3, 3)
eigenvector1 = x(:, 1)
eigenvector2 = x(:, 2)
eigenvector3 = x(:, 3)
% методом пристального взягляда видно, что они равны
A * eigenvector1
eigenvalue1 * eigenvector1

%% number 7
##
##A = [3 1 1; 1 3 1; 1 1 3];
##b = [3; 8; 2];
##
##L = chol(A,'lower');
##x = L'\(L\b)
##
##A*x

%% number 8
##
##A = [3 2 1; 1 3 7; 1 6 1];
##b = [12; 90; 28];
##
##eps = 0.0000001;
### n получено подбором (когда в дробной части отображаются одни нули)
##n = 15;
##x = [0; 0; 0];
##r = b - A*x;
##z = r;
##ncount = 0;
##while true
##  ncount = ncount + 1;
##  alpha = dot(r, r)/dot(A*z, z);
##  x = x + alpha*z;
##  rlast = r;
##  r = r - alpha*A*z;
##  beta = dot(r, r)/dot(rlast, rlast);
##  z = r + beta*z;
##  if (norm(r)/norm(b) < eps) || (ncount > n)
##    break;
##  end
##end
##
##x
##A*x

%% number 9

##figure('Name', 'Number 9', 'NumberTitle', 'off')
##
##A = [1 3 0 1 0; 0 2 1 0 1; 0 7 1 0 -2; 0 1 3 0 2; 0 5 0 1 0];
##spy(A);

%% number 10

A = [1 0 3 0 0; 1 2 0 -1 0; 0 1 7 0 -2; 0 0 1 20 0; 0 0 0 1 6]
AN = sparse(A)
newA = full(AN);
isequal(newA, A)















##a = [3; 4; 5];
##b = [0; -1; 2.5];
##dot(a, b)

##a = [3; 4; 5];
##b = [8; 4; -2];
##
##cross(a, b)

