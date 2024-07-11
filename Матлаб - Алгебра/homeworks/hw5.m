
%% Number 1
disp('Number 1');

a = [1 2 3];
b = [4 6 5];
x = cross(a, b)

%% Number 2
disp('Number 2');

a = [1 2 3];
b = [4 6 5];
ans = cross(a, b) + cross(b, a)

%% Number 3
disp('Number 3');

a = [3 1 1];
b = [0.5 2 1];
c = [-1 -2 3];

ans = dot(a, cross(b, c))

%% Number 4
disp('Number 4');

b = [0.5 2 1];
c = [-1 -2 3];
ans = dot(b, c)

%% Number 5
disp('Number 5');

a = [1 2 3];
b = [4 5 6];
c = [3 3 4];

ans = abs(dot(a, cross(b, c)))

%% Number 6
disp('Number 6');

a = [1 2 3];
b = [4 5 6];

ans = a' * b

%% Number 7
disp('Number 7');

phi = -pi:0.1*pi:pi;

figure('Name', 'Number 7', 'NumberTitle', 'off')
title('Number 7')
hold on;
grid on;

eps = 0.5;
a = 2;
r = a ./ (1 - eps * cos(phi));
[x, y] = pol2cart(phi, r);
plot(x, y)

eps = 1;
a = 4;
r = a ./ (1 - eps * cos(phi));
[x, y] = pol2cart(phi, r);
plot(x, y)

eps = 2;
a = 8;
r = a ./ (1 - eps * cos(phi));
[x, y] = pol2cart(phi, r);
plot(x, y)

%% Number 8
disp('Number 8');

phi = -pi:0.05*pi:pi;
[u, v] = meshgrid(phi);
a = 1;

figure('Name', 'Number 8.1', 'NumberTitle', 'off')

eps = 0.5;
r = a ./ (1 - eps * cos(u));
[x, y, z] = pol2cart(u, r', v);
plot3(x, y, z)
grid on;
view(120, 30)

figure('Name', 'Number 8.2', 'NumberTitle', 'off')

eps = 1;
r = a ./ (1 - eps * cos(u));
[x, y, z] = pol2cart(u, r', v);
plot3(x, y, z)
grid on;
view(30, 15)

figure('Name', 'Number 8.3', 'NumberTitle', 'off')

eps = 2;
r = a ./ (1 - eps * cos(u));
[x, y, z] = pol2cart(u, r', v);
plot3(x, y, z)
grid on;
view(30, 15)

%% Number 9
disp('Number 9');

phi = -pi:0.01*pi:pi;

figure('Name', 'Number 9', 'NumberTitle', 'off')
title('Number 9')
[phi1, phi2] = meshgrid(phi);
r = ones(size(phi1));

% [x, y, z] = pol2cart(phi1, cos(phi1)', sin(phi2)); это тоже рабоает, только это цилиндрическая система
[x, y, z] = sph2cart(phi1, phi2, r);
plot3(x, y, z)

%% Number 10
disp('Number 10');

phi = -pi:0.01*pi:pi;

figure('Name', 'Number 10', 'NumberTitle', 'off')
title('Number 10')
[phi1, phi2] = meshgrid(phi);
r = sqrt(cos(phi1).^2 + sin(phi2).^2);

%[x, y, z] = pol2cart(phi1', cos(phi1), sin(phi2)); это тоже рабоает, только это цилиндрическая система
[x, y, z] = sph2cart(phi1', atan(sin(phi2) ./ cos(phi1)), r);

plot3(x, y, z)
view(45, 15)
