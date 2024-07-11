pkg load symbolic
%% 1
##A = rand([3, 5])
##[x, y] = size(A)

%% 2
##A = randi([1, 30], 5, 4)


%% 3
##syms x
##limit((sin(x))/x, x, 0)

%% 4

##syms x a;
##limit((1+1/x)^(a*x), x, inf)

%% 5
##
##syms x;
##limit((1-x)/log(x), x, 1)

%% 6

##x = -20:0.01:20;
##y = 2 * sin(10*x) .* cos(10 * x) .* x.^2;
##
##figure('Name', '6 plot', 'NumberTitle','off');
##plot(x, y);
##grid on;
##
##figure('Name', '6 area', 'NumberTitle','off');
##area(x, y);
##grid on;
##
##figure('Name', '6 comet', 'NumberTitle','off');
##comet(x, y);
##grid on;

%% 7

##t = -2 * pi:0.01:3*pi;
##x = sin(t);
##y = 2*cos(t);
##plot(x, y);

%% 8

##[x,y,z] = ellipsoid(0, 0, 0, 6, 6, 3);
##[a, b, c]=surfnorm(x,y,z);
##
##figure("Name", "number 8", "NumberTitle", "off")
##hold on;
##ellipsoid(0, 0, 0, 6, 6, 3);
##quiver3(x, y, z, a, b, c, 2);
##grid on;
##view(45, 45);

%% 9
##a = 5;
##b = 3;
##c = 7;
##[x, y] = meshgrid(-10:0.1:10);
##z1 = sqrt(c^2 * (x.^2/a^2 + y.^2/b^2 + 2));
##z2 = -1 * sqrt(c^2 * (x.^2/a^2 +y.^2/b^2 + 2));
##
##figure('Name', 'number 9', 'NumberTitle','off');
##
##quiver3(x, y, z1, (x/a^2)./z1, (y/b^2)./z1, (x/a^2)./z1 + (y/b^2)./z1, 0);
##quiver3(x, y, z2, -(x/a^2)./z2, -(y/b^2)./z2, -(x/a^2)./z2 - (y/b^2)./z2, 0);
##view(60, 10);

%% 10
[u, v] = meshgrid(0:0.1:4*pi, 0.001:0.1:2);

x = cos(u) .* sin(v);
y = sin(u) .* sin(v);
z = cos(v) + log10(tan(v/2)) + 0.2*u - 4;

dx = cos(u + v);
dy = sin(u + v);
dz = -1 * sin(v) + 1./(2 * log(10) * tan(v/2) .* (cos(v/2) .^ 2)) + 0.2;

figure('Name', 'number 10', 'NumberTitle','off');
quiver3(x, y, z, dx, dy, dz, 0);
view(45, 10)
