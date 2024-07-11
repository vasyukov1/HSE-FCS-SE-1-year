
%% number 1
disp('Number 1');

figure("Name", "number 1", "NumberTitle", "off");
x = 0:0.01:8;
plot(x, myfun1(x));
title("exp(x)*sqrt((x^2)/(x^3+0.5))");
xlabel("X");
ylabel("Y");
grid on;

%% number 2
disp('Number 2');

hold on;
fplot(@myfun1, [0, 8]);

lookfor('kotik')
help myfun1

%% number 3
disp('Number 3')

function s = arr_sum(x)
  s = sum(x(2:2:size(x)(2)));
end

%% number 4
disp('Number 4')
figure("Name", "number 4", "NumberTitle", "off");

function f = myfun2(x)
  f = cos(x) - sin(x) .* x.^2;
end

fplot(@myfun2, [-10, 10]);
grid on;

ans4(1) = fzero(@myfun2, -9);
ans4(2) = fzero(@myfun2, -6);
ans4(3) = fzero(@myfun2, -3);
ans4(4) = fzero(@myfun2, 1);
ans4(5) = fzero(@myfun2, 3);
ans4(6) = fzero(@myfun2, 6);
ans4(7) = fzero(@myfun2, 9);
ans4

%% number 5
disp('Number 5')
figure("Name", "number 5", "NumberTitle", "off");

func1 = inline('exp(x.^2) + cos(4*pi*x)');

x = -1.5:0.01:1.5;
y = func1(x);
plot(x, y)
grid on;

[x1(1) y1(1)] = fminbnd(func1, -1.3, -1);
[x1(2) y1(2)] = fminbnd(func1, -1, -0.5);
[x1(3) y1(3)] = fminbnd(func1, -0.5, 0);
[x1(4) y1(4)] = fminbnd(func1, 0, 0.5);
[x1(5) y1(5)] = fminbnd(func1, 0.5, 1);
[x1(6) y1(6)] = fminbnd(func1, 1, 1.3);
x1
y1

%% number 6
disp('Number 6')
figure("Name", "number 6", "NumberTitle", "off");

func2 = @(x) (x+4).^4 + 4;
fplot(func2, [-10 2]);
grid on;
fminsearch(func2, 0)

%% number 7
disp('Number 7')
figure("Name", "number 7", "NumberTitle", "off");

function f = formin(v)
  x = v(1);
  y = v(2);
  f = sin(pi*x).*sin(pi*y);
end

function f = formax(v)
  x = v(1);
  y = v(2);
  f = -sin(pi*x).*sin(pi*y);
end

[x, y] = meshgrid(0:0.01:2);
z = sin(pi*x).*sin(pi*y);
[CMatr, h] = contour(x, y, z, [-0.96, -0.9, -0.8, -0.5, -0.1, ...,
0.1, 0.5, 0.8, 0.9, 0.96]);
clabel(CMatr, h)
colormap(winter)

min(1, :) = fminsearch('formin', [1.5, 0.5]);
min(2, :) = fminsearch('formin', [0.5, 1.5]);
max(1, :) = fminsearch('formax', [1.5, 1.5]);
max(2, :) = fminsearch('formax', [0.5, 0.5]);
min
max

figure("Name", "number 7 surfl", "NumberTitle", "off");
surfl(x, y, z);

