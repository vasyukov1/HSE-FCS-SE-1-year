%% number 1
disp('Number 1');
f = @(x) cos(x)-x.^2.*sin(x);
quad(f, -2, 0, 1e-09)

%% number 2
disp('Number 2');

f = @(x) cos(x)-x.*sin(x);
g = @(x) abs(cos(x)-x.*sin(x));
(quad(f, 1, 4) + quad(g, 1, 4))/2

%% number 3
disp('Number 3');

f = @(x, y) exp(x).*sin(y);
dblquad(f, -2*pi, 0, 0, 2)
integral2(f, -2*pi, 0, 0, 2)

%% number 4
disp('Number 4');
figure("Name", "number 4", "NumberTitle", "off");

f = @(x,y) cos(x).*cos(y).*(1-y.^2).*x.*(1-x);
dblquad(f, -3, 3, -2, 2)

grid on;
hold on;

[x, y] = meshgrid(-3:0.01:3, -2:0.01:2);

surf(x, y, f(x, y))
view(45, 30);

%% number 5
disp('Number 5');

f = @(x, y, z) exp(x).*sin(y.^2).*cos(z.^3);
triplequad(f, -pi, pi, -2*pi, 2*pi, 0, 1)
integral3(f, -pi, pi, -2*pi, 2*pi, 0, 1)

%% number 6
disp('Number 6');

f = @(x, y, z) exp(x).*(sin(y).^2) + exp(-x).*(cos(y).^2) + sin(x).*cos(y).*z.^(0.5);
triplequad(f, -2*pi, 2*pi, -2*pi, 2*pi, 0, 1)
integral3(f, -2*pi, 2*pi, -2*pi, 2*pi, 0, 1)

%% number 7
disp('Number 7');

f = @(x) 1./(x.^2);
quad(f, 0.01, 1)
quadl(f, 0.01, 1)
quadgk(f, 0.01, 1)

%% number 8
disp('Number 8');

f = @(x, y, a, b) a * x.^2 + b * sin(y) .* y.^2;
dblquad(@(x, y, a, b) f(x, y, 20, 7), -1, 1, -1, 1)

%% number 9
disp('Number 9');

f = @(x, a) a * x.^3 - x + 10;
quad(@(x, a) f(x, 3), 0, 5)

%% number 10
disp('Number 10');
figure("Name", "number 10", "NumberTitle", "off");

f = @(x) exp(x).*(sin(x) + cos(x));
g = @(y) quad(f, 0, y);
fplot(g, [0, 2*pi])
legend('integlar(exp(x).*(sin(x) + cos(x), 0, y)')
title('value depending on y')
grid on;

%% number 11
disp('Number 11');
figure("Name", "number 11", "NumberTitle", "off");

f = @(x) sin(x - sqrt(2)) .* exp(2*sin(x)) - 1;
fplot(f, [-1, 5]);
legend('f(x)');
title('f(x) = sin(x-sqrt(2))*exp(2*sin(x))-1')
grid on;

x1 = fzero(f, 1.54);
x2 = fzero(f, pi);
quad(f, x1, x2)

%% number 12
disp('Number 12');
figure("Name", "number 12", "NumberTitle", "off");

f = @(x) sin(x) - x.^2 .* (cos(x))
g = @(x) -1*(sin(x) - x.^2 .* (cos(x)))
fplot(f, [-5, 0]);
legend('f(x)');
title('sin(x) - x^2*(cos(x))')
x1 = fminbnd(f, -2, 0);
x2 = fminbnd(g, -4, -3);
quad(f, x2, x1)
