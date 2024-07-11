%% number 1

figure('Name', 'Number 1', 'NumberTitle','off')

line([0; 0],[-4; -1], 'Color', 'b', 'LineWidth', 2)
line([-2; 0],[1; -1], 'Color', 'b', 'LineWidth', 2)
line([2; 0],[1; -1], 'Color', 'b', 'LineWidth', 2)


%% number 2

figure('Name', 'Number 2', 'NumberTitle', 'off')

line([1, 2, 1.5; 2, 3, 2.5],[0, 2, 1; 2, 0, 1], 'Color', 'b', 'LineWidth', 2)

%% number 3

figure('Name', 'Number 3', 'NumberTitle', 'off')

subplot(5, 1, 1)
line([3; 3],[0; 0.5], 'Color', 'b', 'LineWidth', 2)
axis([2.5 4 0 1])

subplot(5, 1, 2)
line([3; 3.5],[0.5; 0.5], 'Color', 'b', 'LineWidth', 2)
axis([2.5 4 0 1])

subplot(5, 1, 3)
line([3.5; 3.5],[0.5; 0], 'Color', 'b', 'LineWidth', 2)
axis([2.5 4 0 1])

subplot(5, 1, 4)
line([3.5; 3],[0; 0], 'Color', 'b', 'LineWidth', 2)
axis([2.5 4 0 1])

subplot(5, 1, 5)
line([3, 3, 3.5, 3.5; 3, 3.5, 3.5, 3],[0, 0.5, 0.5, 0; 0.5, 0.5, 0, 0], 'Color', 'b', 'LineWidth', 2)
axis([2.5 4 0 1])


%% number 4

figure('Name', 'Number 4', 'NumberTitle', 'off')

quiver([3.5, 3.5, 4], [0, 1, 2], [0, 0.5, 1], [2, 1, 0], 0, 'Color', 'b', 'LineWidth', 4)

%% number 5

figure('Name', 'Number 5', 'NumberTitle', 'off')

quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1], 0, 'Color', 'b', 'LineWidth', 4)
view(120,30)

%% number 6

figure('Name', 'Number 6', 'NumberTitle', 'off')
hold on

axis([-1 3 -1 3])
line([-1, 0; 3, 0],[0, -1; 0, 3], 'Color', 'g', 'LineWidth', 2)
quiver([0, 0], [0, 0], [1, 0], [0, 1], 0, 'Color', 'r', 'LineWidth', 4)

hold off

%% number 7

figure('Name', 'Number 7', 'NumberTitle', 'off')
hold on

axis([-1 3 -1 3])
line([-1, 0, 0; 3, 0, 0], [0, -1, 0; 0, 3, 0], [0, 0, -1; 0, 0, 3], 'Color', 'b', 'LineWidth', 2)
quiver3([0, 0, 0], [0, 0, 0], [0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1], 0, 'Color', 'r', 'LineWidth', 4)
view(120,30)

hold off

%% number 8

figure('Name', 'Number 8', 'NumberTitle', 'off')
hold on

axis([2 9 -5 2])
line([4, 4, 8; 4, 8, 8], [1, -4, -4; -4, -4, 1], 'Color', 'g', 'LineWidth', 2)
grid on
text(4, 1, '(4, 1)')
text(4, -4, '(4, -4)')
text(8, -4, '(8, -4)')
text(8, 1, '(8, 1)')
hold off

%% number 9

A = [1.5, 1];
B = [2, 2];
C = [2.5, 1];
AB = B - A;
BC = C - B;
AC = C - A;
if (AB + BC == AC)
  disp('equal')
else
  disp('not equal')
end

figure('Name', 'Number 9', 'NumberTitle', 'off')
hold on
axis equal
quiver(A(1), A(2), B(1) - A(1), B(2) - A(2), 0, 'Color', 'b', 'LineWidth', 2)
quiver(A(1), A(2), C(1) - A(1), C(2) - A(2), 0, 'Color', 'r', 'LineWidth', 2)
quiver(B(1), B(2), C(1) - B(1), C(2) - B(2), 0, 'Color', 'b', 'LineWidth', 2)

text(A(1), A(2), 'A(1.5, 1)')
text(B(1), B(2), 'B(2, 2)')
text(C(1), C(2), 'C(2.5, 1)')

grid on

hold off

%% number 10

A = [1.5, 1];
B = [2, 2];
C = [2.5, 1];
AB = B - A;
BC = C - B;
AC = C - A;
AD = AC - AB;
D = A + AD;
DC = C - D;

figure('Name', 'Number 10', 'NumberTitle', 'off')

subplot(2, 1, 1)
line([A(1), B(1), C(1), D(1);B(1), C(1), D(1), A(1)], [A(2), B(2), C(2), D(2);B(2), C(2), D(2), A(2)], 'Color', 'b', 'LineWidth', 2)

text(A(1), A(2), 'A')
text(B(1), B(2), 'B')
text(C(1), C(2), 'C')
text(D(1), D(2), 'D')

if (BC == AD) && (AB == DC)
  disp('equal')
else
  disp('not equal')
end
grid on

subplot(2, 1, 2)
hold on

line([B(1), C(1);C(1), D(1)], [B(2), C(2);C(2), D(2)], 'Color', 'k', 'LineWidth', 2)
quiver([A(1), A(1)], [A(2), A(2)], [AB(1), AD(1)], [AB(2), AD(2)], 0, 'Color', 'b', 'LineWidth', 2)
quiver(A(1), A(2), AC(1), AC(2),  0, 'Color', 'r', 'LineWidth', 2)
grid on

hold off

%% number 11

a1 = [2, 2, 4];
b1 = [1, 2, 3];
sum = a1 + b1;

a2 = [6, 5, 4];
b2 = [1, 1, 1];
dif = a2 - b2;

subplot(2, 1, 1)
hold on
quiver3([0, a1(1)], [0, a1(2)], [0, a1(3)], [a1(1), b1(1)], [a1(2), b1(2)], [a1(3), b1(3)], 0, 'Color', 'b', 'LineWidth', 2)
quiver3(0, 0, 0, sum(1), sum(2), sum(3), 0, 'Color', 'r', 'LineWidth', 2)
text(a1(1)/2, a1(2)/2, a1(3)/2, '{\bfa1}')
text(sum(1)/2, sum(2)/2, sum(3)/2, '{\bfsum}')
text(a1(1) + (b1(1))/2, a1(2) + (b1(2))/2, a1(3) + (b1(3))/2, '{\bfb1}')

grid on
hold off

subplot(2, 1, 2)
hold on
quiver3([0, a2(1)], [0, a2(2)], [0, a2(3)], [a2(1), -b2(1)], [a2(2), -b2(2)], [a2(3), -b2(3)], 0, 'Color', 'b', 'LineWidth', 2)
quiver3(0, 0, 0, dif(1), dif(2), dif(3), 0, 'Color', 'r', 'LineWidth', 2)
text(a2(1)/2, a2(2)/2, a2(3)/2, '{\bfa2}')
text(dif(1)/2, dif(2)/2, dif(3)/2, '{\bfdif}')
text(a2(1) - (b2(1))/2, a2(2) - (b2(2))/2, a2(3) - (b2(3))/2, '{\bf-b2}')

grid on
hold off
