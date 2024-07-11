pkg load statistics

%% Number 1
disp('Number 1')
a = input('a = ');
aReversed = a(end:-1:1)

%% Number 2
disp('Number 2')

a = input('a = ');
disp(['first: ', num2str(a(mod(a, 5) == 0))]);
disp(['second: ', num2str(a(mod(a, 5) ~= 0))]);

%% Number 3
disp('Number 3')

a = input('a = ');
disp(num2str(sum(a(a >= 0))));

%% Number 4
disp('Number 4')
a = input('a = ');
if mean(a)>=0
  disp(num2str((a - mean(a)) .* (a >= 0.5*mean(a) & a <= 1.5*mean(a)) + mean(a)));
else
  disp(num2str((a - mean(a)) .* (a <= 0.5*mean(a) & a >= 1.5*mean(a)) + mean(a)));
end

%% Number 5
disp('Number 5')

nthroot(1953125, 9)

%% Number 6
disp('Number 6')

a = input('a = ');
disp(num2str((a - geomean(a)) .* (a ~= max(a)) + geomean(a)));

%% Number 7
disp('Number 7')

a = input('a = ')
disp(['first: ', num2str(length(a(and(mod(a, 3) == 0, a > 0))))]);
disp(['second: ', num2str(length(a(and(mod(a, 3) == 0, a < 0))))]);

%% Number 8
disp('Number 8')

A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 8];
cond(A) % большое, значит скорее всего решение неверное
x = A\b;
isequal(A*x, b) % решение неверное
[~, r] = linsolve(A, b);

disp(['cond A: ', num2str(cond(A))]);
disp(['rg A: ', num2str(r)]);

C = [A b];
D = rref(C);
x = D(:, 4);
isequal(A*x, b) % решение неверное

%% Number 9
clc;
clear;
disp('Number 9')
t = [0; 0.1; 0.2; 0.3; 0.4; 0.5];
y = [4.25; 3.95; 3.64; 3.41; 3.21; 3.04];
A1(:, 1) = exp(t);
A1(:, 2) = t;
x = A1\y;
a = x(1)
b = x(2)

figure('Name', 'Number 9', 'NumberTitle', 'off')
hold on;
grid on;
plot(t, y);
func = @(t) a*exp(t) + b*t;
fplot(func, [0 0.5]);
legend('По точкам', 'Уравнением');

%% Number 10
clc;
clear;
disp('Number 10')

A = [4 2 3; 3 4 3];
b = [2; 2];
x = A\b;
isequal(round(A*x), b)

%% Number 11
disp('Number 11')

A = [2 3 3; -2 -3 -3];
b = [-8; 7];
[x, r] = linsolve(A, b)
if isequal(round(A * x), b)
    disp("correct");
else
    disp("wrong");
end

disp(['cond A: ', num2str(cond(A))]);
disp(['rg A: ', num2str(r)]);

%% Number 12
disp('Number 12')

A = [2 3 3; -2 -3 -3];
b = [-8; 7];
[q, r]=qr(A);
x = r\(q'*b)

if isequal(round(A * x), b)
    disp("correct");
else
    disp("wrong");
end

%% Number 13
disp('Number 13')

A = [4 4 5; 3 5 7; 6 5 2];
[x, y] = eig(A);
eigenvalue1 = y(1, 1)
eigenvalue2 = y(2, 2)
eigenvalue3 = y(3, 3)
eigenvector1 = x(:, 1)
eigenvector2 = x(:, 2)
eigenvector3 = x(:, 3)
% методом пристального взягляда видно, что они равны
A * eigenvector3
eigenvalue3 * eigenvector3
