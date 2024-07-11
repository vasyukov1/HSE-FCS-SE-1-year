%% Number 1
disp('Number 1')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

[U,S,V] = svd(A);
x = U*inv(S)*V'*b

%% Number 2
disp('Number 2')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

L = chol(A,'lower');
x = L'\(L\b)

%% Number 3
disp('Number 3')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

tau = 0.1;
x = [0; 0; 0];
n = 100;
for i = 1:n
  r = b - A*x;
  x = x + r * tau;
end

x
A*x

%% Number 4
disp('Number 4')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

x0 = [0;0;0];
n = 591;%экспериментально выведенный минимум
eps = 0.00001;

for i = 1:length(b)
  for j = 1:length(b)
    beta(i) = b(i)/A(i, i);
    if i == j
      newa(i, j) = 0;
    else
      newa(i, j) = -A(i, j)/A(i, i);
    endif
  endfor
endfor

if size(beta, 1) == 1
  beta = beta';
end
x1 = x0;
ncount = 0;
while true
  ncount = ncount + 1;
  x1 = beta + newa*x0;
  max = abs(x0(1) - x1(1));
  for i=2:length(x0)
    if abs(x0(i) - x1(i)) > max
      max = abs(x0(i) - x1(i));
    end
  end
  if (max < eps) || (ncount > n)
    x = x1;
    break;
  else
    x0 = x1;
  end
end

x
A*x

%% Number 5
disp('Number 5')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

x0 = [0;0;0];
n = 2000;
eps = 0.0000005;
F = A'*A;
H = A'*b;
for i=1:length(b)
  for j=1:length(b)
    beta(i)=H(i)/F(i,i);
    if i == j
      newa(i,j)=0;
    else
      newa(i,j)=-F(i,j)/F(i,i);
    end
  end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
  ncount = ncount + 1;
  for i=1:length(b)
    s = 0;
    for j=1:length(b)
      s = s + newa(i,j)*x1(j);
    end
    x1(i) = beta(i) + s;
  end
  max = abs(x0(1) - x1(1));
  for i=2:length(x0)
    if abs(x0(i)-x1(i)) > max
      max = abs(x0(i)-x1(i));
    end
  end
  if (max < eps) || (ncount > n)
    x = x1;
    break;
  else
    x0 = x1;
  end
end

x
A*x
%% Number 6
disp('Number 6')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

x0 = [0;0;0];
n = 45;
eps = 0.00001;
F = A'*A;
H = A'*b;
w = 1.4;
for i=1:length(b)
  for j=1:length(b)
    beta(i)=H(i)/F(i,i);
    if i == j
      newa(i,j)=0;
    else
      newa(i,j)=-F(i,j)/F(i,i);
    end
  end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
  ncount = ncount + 1;
  for i=1:length(b)
    s = 0;
    for j=1:length(b)
      s = s + newa(i,j)*x1(j);
    end
    x1(i)=beta(i)+s+(w-1)*(beta(i)+s-x0(i));
  end
  max = abs(x0(1) - x1(1));
  for i=2:length(x0)
    if abs(x0(i)-x1(i)) > max
      max = abs(x0(i)-x1(i));
    end
  end
  if (max < eps) || (ncount > n)
    x = x1;
    break;
  else
    x0 = x1;
  end
end

x
A*x

%% Number 7
disp('Number 7')

A = [3 2 1; 2 3 2; 1 2 5];
b = [8; 9; 10];

eps = 0.0001;
n = 100;
x = [0; 0; 0];
r = b - A*x;
z = r;
ncount = 0;
while true
  ncount = ncount + 1;
  alpha = dot(r, r)/dot(A*z, z);
  x = x + alpha*z;
  rlast = r;
  r = r - alpha*A*z;
  beta = dot(r, r)/dot(rlast, rlast);
  z = r + beta*z;
  if (norm(r)/norm(b) < eps) || (ncount > n)
    break;
  end
end


x
A*x

