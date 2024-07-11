%% Number 1
disp('number 1')
figure("Name", "number 1", "NumberTitle", "off");

grid on;
hold on;
t = -100:0.01:100;
x = exp(abs(t - 1)/10) .* sin(t);
y = exp(abs(t - 1)/10) .* cos(t);
z = t;
plot3(x, y, z);
view(45, 45);

%% Number 2
disp('number 2')
figure("Name", "number 2", "NumberTitle", "off");

[u, v] = meshgrid(-2 * pi:0.1 * pi: 2 * pi);
x = v .* sin(u);
y = v .* cos(u);
z = u;
mesh(x, y, z);

%% Number 3
disp('number 3')
figure("Name", "number 3", "NumberTitle", "off");

grid on;
hold on;

t = 0:0.01 * pi:12 * pi;
x = sin(t) .* (exp(cos(t)) - 2 * cos(4 * t) + sin(t/12) .^ 5);
y = cos(t) .* (exp(cos(t)) - 2 * cos(4 * t) + sin(t/12) .^ 5);
plot(x, y);

%% Number 4
disp('number 4')

%% Number 5
disp('number 5')
g = 10;
m = 100;
ux0 = 0.5;
uy0 = 0.6;
t = 0:0.2:10;
x = ux0 * t;
y = uy0 * t - g * t .^ 2/(2 * m);

ux(1:length(x)) = ux0;
uy = uy0 - g * t / m;

Gr1 = figure("Name", "number 5.1", "NumberTitle", "off");
quiver(x, y, ux, uy, 1);

Gr3 = figure("Name", "number 5.2", "NumberTitle", "off");
quiver(x, y, ux, uy, 3);

Gr5 = figure("Name", "number 5.3", "NumberTitle", "off");
quiver(x, y, ux, uy, 5);

figure(Gr1);
hold on;
plot(x, y, 'Color', 'r');
hold off;

figure(Gr3);
hold on;
plot(x, y, 'Color', 'r');
hold off;

figure(Gr5);
hold on;
plot(x, y, 'Color', 'r');
hold off;

%% Number 6
disp('number 6')
figure("Name", "number 6", "NumberTitle", "off")
compass(ux, uy);

%% Number 7
disp('number 7')
figure("Name", "number 7", "NumberTitle", "off")
feather(ux, uy);

%% Number 8
disp('number 8')
figure("Name", "number 8", "NumberTitle", "off")

[u, v] = meshgrid(0:0.01 * pi: 2 * pi, -1:0.01 * pi:1);
x = (1 + v/2 .* cos(u/2)) .* cos(u);
y = (1 + v/2 .* cos(u/2)) .* sin(u);
z = v/2 .* sin(u/2);

[a, b, c]=surfnorm(x,y,z);

quiver3(x, y, z, a, b, c, 2);

%% Number 9
disp('number 9')
figure("Name", "number 9", "NumberTitle", "off")

a = 5;
b = 3;
[x, y] = meshgrid(-10:0.1:10);
z = x.^2/a^2 - y.^2/b^2;
quiver3(x, y, z, 2*x/a^2, -2*y/b^2, 2*x/a^2 - 2*y/b^2, 0);

%% Number 10
disp('number 10')
figure("Name", "number 10", "NumberTitle", "off")
hold on;
a = 5;
b = 3;
c = 7;
[x, y] = meshgrid(-10:0.1:10);
z1 = sqrt(c^2 * (x.^2/a^2 + y.^2/b^2 + 2));
z2 = -1 * sqrt(c^2 * (x.^2/a^2 +y.^2/b^2 + 2));
quiver3(x, y, z1, (x/a^2)./z1, (y/b^2)./z1, (x/a^2)./z1 + (y/b^2)./z1, 0);
quiver3(x, y, z2, -(x/a^2)./z2, -(y/b^2)./z2, -(x/a^2)./z2 - (y/b^2)./z2, 0);
view(30, 10);

%% Number 11
disp('number 11')
figure("Name", "number 11", "NumberTitle", "off")
[u, v] = meshgrid(0:0.1:3);
x = cos(u) .* cos(v);
y = sin(u) .* sin(v);
z = u .* v

dx = -1*sin(u + v);
dy = sin(u + v);
dz = v + u;
quiver3(x, y, z, dx, dy, dz, 0);

%% Number 12
disp('number 12')
figure("Name", "number 12", "NumberTitle", "off")

[u, v] = meshgrid(0:0.1:4*pi, 0.001:0.1:2);

x = cos(u) .* sin(v);
y = sin(u) .* sin(v);
z = cos(v) + log(tan(v/2)) + 0.2 * u - 4;
mesh(x, y, z);

%% Number 13
disp('number 13')
figure("Name", "number 13", "NumberTitle", "off")

[u, v] = meshgrid(-pi:0.01*pi:pi);
x = cos(u) .* (cos(v) + 3);
y = sin(u) .* (cos(v) + 3);
z = sin(v);

dx = -1 * sin(u) .* ((cos(v) + 3)) - cos(u) .* sin(v);
dy = cos(u) .* (cos(v) + 3) - sin(u) .* sin(v);
dz = cos(v);

quiver3(x, y, z, dx, dy, dz, 0);
view(0, 70);
