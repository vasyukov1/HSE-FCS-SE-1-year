pkg load symbolic

%% Number 1
disp('number 1')

syms x;
%без sym(1) он кидает warning
f = (x^2-1)/(2*x+(sym(1)/6));

limit(f, x, (-sym(1)/3))

%% Number 2
disp('number 2')

syms x;
f = (2 + x)^(1/x);

limit(f, x, 0, 'left')
limit(f, x, 0, 'right')

%% Number 3
disp('number 3')

x = -4:0.1:4;
f = (2 + x).^(1./x);
plot(x, f);

%% Number 4
disp('number 4')
syms x;
diff(acot(x), x, 1)

syms delta
limit((acot(x+delta) - acot(x))/delta, delta, 0)

%% Number 5
disp('number 5')

syms x;
diff((3*sin(2*x^3))^4, x, 1)

%% Number 6
disp('number 6')

syms x
f = sin(x)/x;
limit(f,x,0)

%% Number 7
disp('number 7')

syms x;
limit((1 - exp(-x))/x, x, inf)

%% Number 8
disp('number 8')

syms x;
limit((1 - x)/log(x), x, 1)

%% Number 9
disp('number 9')

syms x;
diff((x^3)*sin(x/3), x, 6)

%% Number 10
disp('number 10')

syms x;
limit(1-exp(-x)/x, x, inf)

%% Number 11
disp('number 11')

syms a x n;
diff(exp(-a*x^2)+log(a^n+x^a), x, 2)

%% Number 12
disp('number 12')

quad('cos(x) - x * sin(x)', -3, 1, 1.0e-05)
figure('Name', 'Number 12', 'NumberTitle','off')
hold on
x = -3:0.05:1;
f = cos(x) - x .* sin(x);
area(x, f);

x1 = -4:0.05:2;
f1 = cos(x1) - x1 .* sin(x1);
plot(x1, f1);

grid on

%% Number 13

disp('number 13')

quad('x^2 + 1', 1, 3, 1.0e-05)

