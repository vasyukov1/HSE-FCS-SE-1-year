pkg load symbolic;
%% number 1
disp('Number 1');

f=sym('2/(2-x)');
tf = taylor(f)

%% number 2
disp('Number 2');
syms x y
f=sym('10/(x^2+y^2)');

tf1 = taylor(f, x, 'Order', 3)
tf2 = taylor(f, y, 'Order', 3)

%% number 3
disp('Number 3');

syms x
f = sym('x*cos(x)');
tf = taylor(f, x, 3, 'Order', 10)

%% number 4
disp('Number 4');

syms k;
s1 = symsum('(-1)^k/k^2', k, 1, Inf)

s2 = symsum('(-1)^k * x^(2*k+1)/factorial(2*k+1)', k, 0, Inf)

%% number 5
disp('Number 5');
syms k

if (limit('1/8-(1/3)^k', k, inf) == 0)
  disp('сходится')
else
  disp('расходится')
end
% расходится
symsum('1/8-(1/3)^k', k, 1, Inf)

%% number 6
disp('Number 6');
clc;
clear;
function s = my_sum(fun, lim)
  figure("Name", fun, "NumberTitle", "off");
  hold on;
  syms n
  if limit(fun, n, inf) ~= 0
    disp('расходится')
  else
##    признак Даламбера
    syms q;
    f = @(q) (symsum(fun, n, q + 1, q + 1)/symsum(fun, n, q, q));
    ans = limit(f, q, inf);
    if ans < 1
      disp('сходится')
    else
      if ans > 1
        disp('расходится')
      else
        f = @(q) symsum(fun, n, q, q)*q^2;
        ans = limit(f, q, inf);
        if ans > 0 & ans <1000
          disp('сходится')
        else
          disp('расходится')
        endif
      endif
    endif
  endif
  for i = 1:50
    x(i) = i;
    y(i) = symsum(fun, n, i, i);
    sum(i) = symsum(fun, n, 1, i);
  end
  plot(x, double(y));
  plot(x, double(sum));
  s = symsum(fun, n, 1, lim);
  grid on;
end
s1 = my_sum('0.3^n', inf)
s2 = my_sum('1.5^n', inf)
s3 = my_sum('1/n', inf)
s4 = my_sum('1/sqrt(n)', inf)
s5 = my_sum('1/n^2', inf)
s6 = my_sum('1/(n^2+2*n)', inf)
