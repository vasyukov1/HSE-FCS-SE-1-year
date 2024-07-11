pkg load symbolic

%% 1
clc;
clear;
figure("Name", "number 1", "NumberTitle", "off");

func1 = inline('exp(-x.^2) - cos(2*pi*x.^2)');

x = -1:0.01:1;
y = func1(x);
plot(x, y)
grid on;

func2 = inline('-exp(-x.^2) + cos(2*pi*x.^2)');

[x1(1) y1(1)] = fminbnd(func2, -0.8, -0.6);
[x1(2) y1(2)] = fminbnd(func2, -0.1, 0.1);
[x1(3) y1(3)] = fminbnd(func2, 0.6, 0.8);
x1
-y1

%% 2
clc;
clear;
##x^6+3x^4+x^3-10x^2-x+1
p = [1 0 3 1 -10 -1 1]
ans = roots(p)
polyval(p, ans)
polyval(p, 3)


%% 3
clc;
clear;
figure("Name", "number 3", "NumberTitle", "off");

##e^(x^2)+cos(2*pi*x)
func1 = @(x) exp(x.^2) + cos(2*pi*x);
func2 = @(x) -exp(x.^2) - cos(2*pi*x);

fplot(func1, [-2 2])
grid on;
legend('f(x)')
[x1(1) y1(1)] = fminbnd(func1, -0.6, -0.4);
[x1(2) y1(2)] = fminbnd(func2, -0.1, 0.1);
[x1(3) y1(3)] = fminbnd(func1, 0.4, 0.6);
y1(2) = -y1(2);
x1
y1

%% 4
clc;
clear;

##x^10+x^8+x^6-3x^4-11x-1
##x^5-11x^2+1

## добавить package
p1 = [1 0 1 0 1 0 -3 0 0 -11 -1];
p2 = [1 0 0 -11 0 1];
[~, r] = deconv(p1, p2);
poly2sym(r)

%% 5

clc;
clear;
figure('Name', 'Number 5', 'NumberTitle', 'off')

x = [1 2 3 4 5 7 10 14 19 25];
y = [0 -1 -3 -2 -4 -3 -6 -4 -10 -20];
hold on;
grid on;

plot(x, y);

poly4 = polyfit(x, y, 4)
x1 = 1:0.01:25;
y1 = polyval(poly4, x1);
plot(x1, y1)

poly5 = polyfit(x, y, 5)
x1 = 1:0.01:25;
y1 = polyval(poly5, x1);
plot(x1, y1)

poly6 = polyfit(x, y, 6)
x1 = 1:0.01:25;
y1 = polyval(poly6, x1);
plot(x1, y1)

poly7 = polyfit(x, y, 7)
x1 = 1:0.01:25;
y1 = polyval(poly7, x1);
plot(x1, y1)
legend('оригинал', 'полином 4 степени', 'полином 5 степени', 'полином 6 степени', 'полином 7 степени')

%% 6

clc;
clear;
figure('Name', 'Number 6', 'NumberTitle', 'off')

[x, y] = meshgrid(0:0.2:1);
z = sin(5*pi*x).*cos(5*pi*y)

[xi, yi] = meshgrid(0:0.02:1);
znear = interp2(x, y, z, xi, yi, 'nearest');
zlin = interp2(x, y, z, xi, yi, 'linear');
zcubic = interp2(x, y, z, xi, yi, 'cubic');
zspline = interp2(x, y, z, xi, yi, 'spline');

subplot(2, 3, 1);
title('original')
grid on;
surfl(x, y, z)
view(45, 45);

subplot(2, 3, 2);
title('near')
grid on;
surfl(xi, yi, znear);
view(45, 45);

subplot(2, 3, 3);
title('linear')
grid on;
surfl(xi, yi, zlin);
view(45, 45);

subplot(2, 3, 4);
title('cubic')
grid on;
surfl(xi, yi, zcubic);
view(45, 45);

subplot(2, 3, 5);
title('spline')
grid on;
surfl(xi, yi, zspline);
view(45, 45);

%% 7
clc;
clear;
##exp(x)*sin(-y) при х от –pi до pi и y от 0 до 1
f = @(x, y) exp(x).*sin(-y);
dblquad(f, -pi, pi, 0, 1)
integral2(f, -pi, pi, 0, 1)


%% 8
clc;
clear;
f = @(x, y, z) exp(x) .* sin(y).^2 + exp(-x) .* cos(y).^2 + sin(z) .* cos(z);
integral3(f, -pi, pi, -pi, pi, -1, 1)

%% 9
clc;
clear;
syms k;
s1 = symsum('(-1)^k/k^4', k, 1, Inf)

%% 10

clc;
clear;
f=sym('sin(x)*cos(x)');
tf = taylor(f)








%% 1
figure('Name', 'Number 1', 'NumberTitle', 'off')
hold on;
x = -2:0.01:10;
y = exp(-x) .* sqrt((x.^3)./(x.^2+7));
f = @(x) exp(-x) .* sqrt((x.^3)./(x.^2+7));

plot(x, y)
fplot(f, [-2, 10])
grid on;
legend("plot", "fplot")

%% 2
##x^10+3x^5+x^3-10x+3
p = [1 0 0 0 0 3 0 1 0 -10 3]
ans = roots(p)
polyval(p, ans)
polyval(p, 2)

%% 3


%% 4

##x^9+2x^4+4x^3+2x^2+3x+3
##x^9-2x^4-3x-9

p1 = [1 0 0 0 0 2 4 2 3 3]
p2 = [1 0 0 0 0 -2 0 0 -3 -9]
poly2sym(p1 + p2)

%% 5

##x^10+x^8+x^6-3x^4-11x-1
##x^5-11x^2+1

## добавить package
p1 = [1 0 1 0 1 0 -3 0 0 -11 -1];
p2 = [1 0 0 -11 0 1];
[~, r] = deconv(p1, p2);
poly2sym(r)

%% 6

##x^5+x^4+2x^2-10x+1
##x^3+2x-1
p1 = [1 1 0 2 -10 1];
p2 = [1 0 2 -1];
[d, ~] = deconv(p1, p2);
poly2sym(d)

%% 7

f = @(x) cos(x) - x.*sin(x) + x.*(sin(x.^2) - cos(x.^4));
fplot(f, [-1 0.9])
grid on;
legend("cos(x)-x*sin(x)+x*(sin(x^2)-cos(x^4))")

x1 = fzero(f, -0.9)
x2 = fzero(f, 0.7)
quad(f, x1, x2)

%% 8

f = @(x,y) e.^(x).*e.^(y).*(4*x-y);
dblquad(f, 0, 2, 0, 2)

grid on;
hold on;

[x, y] = meshgrid(0:0.01:2, 0:0.01:2);

surf(x, y, f(x, y))
view(45, 45);

%% 9

%% 10

syms x
f = sym('x*cos(x)');
tf = taylor(f, x, 3, 'Order', 5)

