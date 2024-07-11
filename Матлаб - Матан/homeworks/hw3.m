pkg load symbolic

%% Number 1
disp('number 1')
figure('Name', 'Number 1', 'NumberTitle','off')

x = -1:0.01:1;
y = tan(x.^2).*cot(2*x);
plot(x, y);

grid on;

%% Number 2
disp('number 2')
figure('Name', 'Number 2', 'NumberTitle','off')
grid on;

hold on;

x = 0:0.001:1.15;
y = tan(x.^2).*cot(2*x);
area(x, y);
comet(x, y);

%% Number 3
disp('number 3')
figure('Name', 'Number 3', 'NumberTitle','off')

x = [0.05, 0.1, 0.15, 0.2, 0.5];
explode = [0 0 0 1 0];
pie3(x, explode);

%% Number 4
disp('number 4')
figure('Name', 'Number 4', 'NumberTitle','off')

hold on;

x = 0:0.1:2;
f = e - x.*(sin(x) + 0.1 * sin(100*pi*x));
plot(x, f, 'Color', 'r');

x = 0:1/99:2;
f = e - x.*(sin(x) + 0.1 * sin(100*pi*x));
plot(x, f, 'Color', 'b');

%% Number 5
disp("number 5");
figure("Name", "number 5", "NumberTitle", "off");

x = 0.01:0.01:5;
f = log(2 * x);
g1 = log(x) .* cos(x);
g = g1(g1>0)
subplot(2, 2, 1);

loglog(x, f);
hold on;
loglog(x, g);
xlabel('X');
ylabel('Y');
legend('first', 'Location', 'northwest');
grid on;

subplot(2, 2, 2);

semilogx(x, f);
hold on;
semilogx(x, g);
xlabel('X');
ylabel('Y');
legend('second', 'Location', 'northwest');
grid on;

subplot(2, 2, 3);
semilogy(x, f);
hold on;
semilogy(x, g);
xlabel('X');
ylabel('Y')
legend('third', 'Location', 'northwest');
grid on;

%% Number 6
disp('number 6')
figure('Name', 'Number 6', 'NumberTitle','off')

t = -pi:0.1:pi;
x = cos(t);
y = cos(t);
bar(x,y,10);

%% Number 7
disp('number 7')
figure('Name', 'Number 7', 'NumberTitle','off')

grid on;
hold on;

[x, y] = meshgrid(-3:0.05:3);
z = 4 * sin(2 * pi * x) .* cos(1.5 * pi * y) .* (1 - y.^2) .* x .* (1 - x);
mesh(x, y, z);

view(20, 40);
hidden off;

%% Number 8
disp('number 8')
figure('Name', 'Number 8', 'NumberTitle','off')

[x, y] = meshgrid(-0.1:0.02:0.05, -3:0.02:3);
z = exp(-1./x).*sin(y);

surfl(x,y,z,[-80,75]);
view(-40, 20);

%% Number 9
disp('number 9')
figure('Name', 'Number 9', 'NumberTitle','off')

[x, y] = meshgrid(-3:0.1:3);
z = sin(x).*cos(y);
contour3(x, y, z, -1:0.05:1);
view(10, 20);
zlim([-1, 1]);
colormap('winter');
colorbar;

%% Number 10
disp('number 10')
figure('Name', 'Number 10', 'NumberTitle','off')

[v, u] = meshgrid(-pi:0.1:pi, -2 * pi:0.1:2 * pi);
z = sin(v) + 2 * cos(1.5 * u);
x = cos(u) .* cos(v) + 3 * cos(u) .* (1.5 + 0.5 * sin(1.5 * u));
y = sin(u) .* cos(v) + 3 * sin(u) .* (1.5 + 0.5 * sin(1.5 * u));

subplot(2, 2, 1)
mesh(x, y, z);
view(30, 15);

subplot(2, 2, 2)
surf(x, y, z);
view(120, 15);

subplot(2, 2, 3)
contour3(x, y, z, -3:0.2:3);
view(210, 15);

subplot(2, 2, 4)
surfl(x,y,z);
view(300, 15);

