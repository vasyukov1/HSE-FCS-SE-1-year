%% numder 1
disp('1')
alpha = 2;
beta = 4;
a = [1, 1, 3];
b = [2, 2, 5];

ans1 = isequal(alpha * (a + b), alpha * a + alpha * b);
ans2 = isequal((alpha + beta) * a, alpha * a + beta * a);
ans3 = isequal(alpha * (beta * a), (alpha * beta) * a);
if ans1 == 1 && ans2 == 1 && ans3 == 1
  disp('they work')
else
  disp('they are wrong')
end

%% number 2
disp(2)
a = [1, 1, -1];
ox = [1, 0, 0];
oy = [0, 1, 0];
oz = [0, 0, 1];

aox = acosd(dot(a, ox)/norm(a)/norm(ox))
aoy = acosd(dot(a, oy)/norm(a)/norm(oy))
aoz = acosd(dot(a, oz)/norm(a)/norm(oz))
eps = 0.000001
if (cosd(aox)^2 + cosd(aoy)^2 + cosd(aoz)^2) - 1 < eps
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

b = [6, 4, 0];
box = acosd(dot(b, ox)/norm(b)/norm(ox))
boy = acosd(dot(b, oy)/norm(b)/norm(oy))
if (cosd(box)^2 + cosd(boy)^2) - 1 < eps
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

%% number 3
disp('3')
a = [1, 2, 3];
b = [2, 3, 4];
c = [2, 4. 6];

if ((a + b) + c == a + (b + c)) && (a + b == b + a)
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

if isequal((a + b) + c, a + (b + c)) && isequal(a + b, b + a)
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

figure('Name', 'Number 3', 'NumberTitle', 'off')
subplot(2, 1, 1)
quiver3([0, 0, b(1), a(1)], [0, 0, b(2), a(2)], [0, 0, b(3), a(3)], [a(1), b(1), a(1), b(1)], [a(2), b(2), a(2), b(2)], [a(3), b(3), a(3), b(3)], 0, 'Color', 'b', 'LineWidth', 2)
grid on

subplot(2, 1, 2)
hold on

quiver3(0, 0, 0, (a + b)(1), (a + b)(2), (a + b)(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3((a + b)(1), (a + b)(2), (a + b)(3), c(1), c(2), c(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(a(1), a(2), a(3), (b+c)(1), (b+c)(2), (b+c)(3), 0, 'Color', 'r', 'LineWidth', 2)
grid on

hold off

%% number 4
disp('4')

a = [2, 2, 3];
len_a = sqrt(a(1)^2 + a(2)^2 + a(3)^2)
if isequal(len_a, norm(a)) == 1
  disp('right')
else
  disp('wrong')
end
a0 = a/len_a;

if isequal(norm(a0), 1) == 1
  disp('is ort')
else
  disp('is not ort')
end

figure('Name', 'Number 4.1', 'NumberTitle', 'off')
hold on

quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3(0, 0, 0, a0(1), a0(2), a0(3), 0, 'Color', 'r', 'LineWidth', 2)
grid on
view(60,30)

hold off

b = [4, 5];
len_b = sqrt(b(1)^2 + b(2)^2)
if isequal(len_b, norm(b)) == 1
  disp('right')
else
  disp('wrong')
end
b0 = b/len_b;

if isequal(norm(b0), 1) == 1
  disp('is ort')
else
  disp('is not ort')
end

figure('Name', 'Number 4.2', 'NumberTitle', 'off')
hold on

quiver(0, 0, b(1), b(2), 0, 'Color', 'b', 'LineWidth', 2)
quiver(0, 0, b0(1), b0(2), 0, 'Color', 'r', 'LineWidth', 2)
grid on

hold off

%% number 5
disp('5')

a = [1, -2, 0];
b = [0, 1, 2];
c = [1, 2, 1];
a0 = a/norm(a);
b0 = b/norm(b);
c0 = c/norm(c);

if dot(cross(a,b),c) ~= 0
  disp('is basis')
else
  disp('is not basis')
end

figure('Name', 'Number 5', 'NumberTitle', 'off')
hold on

quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1], 0, 'Color', 'r', 'LineWidth', 3)
quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [a0(1), a0(2), a0(3)], [b0(1), b0(2), b0(3)], [c0(1), c0(2), c0(3)], 0, 'Color', 'b', 'LineWidth', 2)
quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [a(1), a(2), a(3)], [b(1), b(2), b(3)], [c(1), c(2), c(3)], 0, 'Color', 'g', 'LineWidth', 2)
grid on

hold off

%% number 6
disp('6')

p = [2, -2];
q = [3, 2];
s = [5, 4];

m = det([5, 3; 4, 2])/det([2, 3; -2, 2]);
n = det([2, 5; -2, 4])/det([2, 3; -2, 2]);

figure('Name', 'Number 6', 'NumberTitle', 'off')
hold on

quiver(0, 0, s(1), s(2), 0, 'Color', 'g', 'LineWidth', 4)
quiver(0, 0, m*p(1), m*p(2), 0, 'Color', 'g', 'LineWidth', 4)
quiver(0, 0, n*q(1), n*q(2), 0, 'Color', 'g', 'LineWidth', 4)
quiver(0, 0, q(1), q(2), 0, 'Color', 'b', 'LineWidth', 4)
quiver(0, 0, p(1), p(2), 0, 'Color', 'b', 'LineWidth', 4)
quiver(0, 0, 1, 0, 0, 'Color', 'r', 'LineWidth', 4)
quiver(0, 0, 0, 1, 0, 'Color', 'r', 'LineWidth', 4)
quiver(-1, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 4)
quiver(0, -1, 0, 4, 0, 'Color', 'k', 'LineWidth', 4)


grid on

hold off

%% number 7
disp('7')
figure('Name', 'Number 7', 'NumberTitle', 'off')

a = [3, 2];
b = [2, -1];
c = [2, -2];

matrix = [3, 2, 2; 2, -1, -2];

% if b, c is basis
b1 = det(matrix(:, [1, 3]))/det(matrix(:, [2, 3]))
c1 = det(matrix(:, [2, 1]))/det(matrix(:, [2, 3]))

% if a, c is basis
a2 = det(matrix(:, [2, 3]))/det(matrix(:, [1, 3]))
c2 = det(matrix(:, [1, 2]))/det(matrix(:, [1, 3]))

% if a, b is basis
a3 = det(matrix(:, [3, 2]))/det(matrix(:, [1, 2]))
b3 = det(matrix(:, [1, 3]))/det(matrix(:, [1, 2]))

subplot(2, 2, 1)
hold on
quiver(0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver(0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver(-1, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver(0, -1, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)
quiver(0, 0, a(1), a(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(0, 0, b(1), b(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(0, 0, c(1), c(2), 0, 'Color', 'r', 'LineWidth', 2)

hold off

subplot(2, 2, 2)
hold on

quiver(0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver(0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver(-1, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver(0, -1, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)

quiver(0, 0, a(1), a(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(0, 0, b1 * b(1), b1 * b(2), 0, 'Color', 'b', 'LineWidth', 2)
quiver(b1 * b(1), b1 * b(2), c1 * c(1), c1 * c(2), 0, 'Color', 'b', 'LineWidth', 2)

hold off

subplot(2, 2, 3)
hold on

quiver(0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver(0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver(-1, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver(0, -1, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)

quiver(0, 0, b(1), b(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(0, 0, a2 * a(1), a2 * a(2), 0, 'Color', 'b', 'LineWidth', 2)
quiver(a2 * a(1), a2 * a(2), c2 * c(1), c2 * c(2), 0, 'Color', 'b', 'LineWidth', 2)

hold off

subplot(2, 2, 4)
hold on

quiver(0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver(0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver(-1, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver(0, -1, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)

quiver(0, 0, c(1), c(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(0, 0, a3 * a(1), a3 * a(2), 0, 'Color', 'b', 'LineWidth', 2)
quiver(a3 * a(1), a3 * a(2), b3 * b(1), b3 * b(2), 0, 'Color', 'b', 'LineWidth', 2)

hold off

%% number 8
disp('8')
figure('Name', 'Number 8', 'NumberTitle', 'off')

a = [2, 1, 0];
b = [1, -1, 2];
c = [2, 2, -1];
d = [1, 2, 2];

matrix = [1, 2, 1, 2; -1, 2, 2, 1; 2, -1, 2, 0];
b0 = det(matrix(:, [4, 2, 3]))/det(matrix(:, [1, 2, 3]));
c0 = det(matrix(:, [1, 4, 3]))/det(matrix(:, [1, 2, 3]));
d0 = det(matrix(:, [1, 2, 4]))/det(matrix(:, [1, 2, 3]));

subplot(2, 1, 1)
hold on

quiver3(0, 0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver3(0, 0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver3(0, 0, 0, 0, 0, 1, 'Color', 'y', 'LineWidth', 2)
quiver3(-1, 0, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver3(0, -1, 0, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)
quiver3(0, 0, -1, 0, 0, 4, 'Color', 'k', 'LineWidth', 2)

quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(0, 0, 0, c(1), c(2), c(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(0, 0, 0, d(1), d(2), d(3), 0, 'Color', 'r', 'LineWidth', 2)

hold off

subplot(2, 1, 2)
hold on

quiver3(0, 0, 0, 1, 0, 0, 'Color', 'y', 'LineWidth', 2)
quiver3(0, 0, 0, 0, 1, 0, 'Color', 'y', 'LineWidth', 2)
quiver3(0, 0, 0, 0, 0, 1, 'Color', 'y', 'LineWidth', 2)
quiver3(-1, 0, 0, 4, 0, 0, 'Color', 'k', 'LineWidth', 2)
quiver3(0, -1, 0, 0, 4, 0, 'Color', 'k', 'LineWidth', 2)
quiver3(0, 0, -1, 0, 0, 4, 'Color', 'k', 'LineWidth', 2)

quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(0, 0, 0, b0 * b(1), b0 * b(2), b0 * b(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3(b0 * b(1), b0 * b(2), b0 * b(3), c0 * c(1), c0 * c(2), c0 * c(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3(b0 * b(1) + c0 * c(1), b0 * b(2) + c0 * c(2), b0 * b(3) + c0 * c(3), d0 * d(1), d0 * d(2), d0 * d(3), 0, 'Color', 'b', 'LineWidth', 2)

hold off
%% number 9
disp('9')

a = [1, 2, -2];
b = [1, 1, 2];
c = [2, 2, 2];
alpha = 5;

if isequal(dot(a, b), dot(b, a))
  disp('ok')
else
  disp('wrong')
end

if isequal(dot(a + b, c), dot(a, c) + dot(b, c))
  disp('ok')
else
  disp('wrong')
end

if isequal(dot(c, a + b), dot(c, a) + dot(c, b))
  disp('ok')
else
  disp('wrong')
end

if isequal(dot(alpha * a, b), alpha * dot(a, b))
  disp('ok')
else
  disp('wrong')
end

if isequal(dot(a, alpha * b), alpha * dot(a, b))
  disp('ok')
else
  disp('wrong')
end

if (~isequal(a, 0) && dot(a, a) <= 0 || isequal(a, 0) && dot(a, a) ~= 0)
  disp('wrong')
else
  disp('ok')
end

%% number 10
disp('10')

a = [-1, 2, 0];
b = [0, 1, 2];
c = [1, 1.5, 2];

if isequal(dot(a, b) * c, a * dot(b, c))
  disp('(a,b)*c = a*(b,c)')
else
  disp('(a,b)*c ~= a*(b,c)')
end

if ((dot(a, b) == dot(a, c)) && ~isequal(a, c) && ~isequal(b, c))
  disp('wrong')
else
  disp('everything is awesome')
end
if isequal(dot(a, b) * b, a * dot(b, b))
  disp('everything is awesome')
else
  disp('(a,b)*b ~= a*(b,b)')
end
