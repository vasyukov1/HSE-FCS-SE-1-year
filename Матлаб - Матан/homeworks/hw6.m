pkg load symbolic

%% number 1
disp('Number 1');

p = [3 1 0 -10 0 0 0 -2 24];
ans = roots(p)
polyval(p, ans)

%% number 2
disp('Number 2');

disp('x^6+x^4+2x^2+3 * x^4+2x^2+3x-10 = ' )
a = [1 0 1 0 2 0 3];
b = [1 0 2 3 -10];
ans = conv(a,b);
poly2sym(ans)

%% number 3
disp('Number 3');

a = [1 1 0 0 0 0 1 -1];
b = [1 -2 0];
[d, r] = deconv(a,b);
poly2sym(d)

%% number 4
disp('Number 4');

a = [1 1 1 -3 -1 -7 -1];
b = [1 0 -16 -1];
[d, r] = deconv(a,b);
poly2sym(r)

%% number 5
disp('Number 5');

a = [1 1 4 2 1 1 0 3];
b = [0 0 3 0 0 -1 -3 -6];

poly2sym(a + b)


%% number 6
disp('Number 6');

a = [0 1 1 2 1 0 0 0 3 3];
b = [1 0 0 0 0 0 0 0 1 0];

poly2sym(a - b)

%% number 7
disp('Number 7');

a = [2 3 1 -10 -1 10];

poly2sym(polyder(a))

%% number 8
disp('Number 8');

a = [1 0 1 -1 -1 1];
b = polyder(a);

polyval (b, -2)

%% number 9
disp('Number 9');
figure('Name', 'Number 9', 'NumberTitle', 'off')

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
hold on;
grid on;

plot(x, y);

poly2 = polyfit(x, y, 2)
x1 = 0.1:0.01:2;
y1 = polyval(poly2, x1);
plot(x1, y1)

poly4 = polyfit(x, y, 4)
x1 = 0.1:0.01:2.1;
y1 = polyval(poly4, x1);
plot(x1, y1)

poly5 = polyfit(x, y, 5)
x1 = 0.1:0.01:2;
y1 = polyval(poly5, x1);
plot(x1, y1)

poly6 = polyfit(x, y, 6)
x1 = 0.1:0.01:2;
y1 = polyval(poly6, x1);
plot(x1, y1)

poly8 = polyfit(x, y, 8)
x1 = 0.1:0.01:2;
y1 = polyval(poly8, x1);
plot(x1, y1)
legend('оригинал', 'полином 2 степени', 'полином 4 степени', 'полином 5 степени', 'полином 6 степени', 'полином 8 степени')

%% number 10
disp('Number 10');
figure('Name', 'Number 10', 'NumberTitle', 'off')

x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
hold on;
grid on;

plot(x, y);

xi = 0.1:0.01:2;
ylin = interp1(x, y, xi);
plot(xi, ylin)

ynear = interp1(x, y, xi, 'nearest');
plot(xi, ynear)

ychip = interp1(x, y, xi, 'pchip');
plot(xi, ychip)

yspline = interp1(x, y, xi, 'spline');
plot(xi, yspline)
legend('оригинал', 'linear', 'nearest', 'pchip', 'spline')

%% number 11
disp('Number 11');
figure('Name', 'Number 11', 'NumberTitle', 'off')

[x, y] = meshgrid(0:0.2:1);
z = cos(3*pi*x) .* cos(3*pi*y) .* exp(-x.^2-y.^2);

[xi, yi] = meshgrid(0:0.01:1);
znear = interp2(x, y, z, xi, yi, 'nearest');
zlin = interp2(x, y, z, xi, yi, 'linear');
zcubic = interp2(x, y, z, xi, yi, 'cubic');
zspline = interp2(x, y, z, xi, yi, 'spline');
zpchip = interp2(x, y, z, xi, yi, 'pchip');

subplot(2, 3, 1);
title('original')
grid on;
mesh(x, y, z)
view(45, 45);

subplot(2, 3, 2);
title('near')
grid on;
surf(xi, yi, znear);
view(45, 45);

subplot(2, 3, 3);
title('linear')
grid on;
surf(xi, yi, zlin);
view(45, 45);

subplot(2, 3, 4);
title('cubic')
grid on;
surf(xi, yi, zcubic);
view(45, 45);

subplot(2, 3, 5);
title('spline')
grid on;
surf(xi, yi, zspline);
view(45, 45);


subplot(2, 3, 6);
title('pchip')
grid on;
surf(xi, yi, zpchip);
view(45, 45);
