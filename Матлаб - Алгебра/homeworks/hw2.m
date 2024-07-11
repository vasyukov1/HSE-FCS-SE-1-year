pkg load symbolic

%% №1
disp('Number 1')

A = [-2, 4.5, 6, 8; -4, 6, 3.2, 6; 4, 8, 0, 3.9; 8, -2, 10, 7]

%% №2
disp('Number 2')

B = randi([1, 10], 4)

%% №3

disp('Number 3')

det(B)

%% №4
disp('Number 4')

A - 5*B
A*B
A'
B'

%% №5
disp('Number 5')

C = ones(4, 1);
C(1, 1) = -1;
C(2, 1) = -4;
C(4, 1) = 8;
C

%% №6
disp('Number 6')

syms X;

X = B\C

%% №7
disp('Number 7')

syms x;
x = solve(det([2*sin(x), 2; 1, 2*cos(x)]));
x

%% №8.1
disp('Number 8.1')

Orig = [1, -1, 1; -3, 14, 2; 10, 6, -5];
OrigX = [3, -1, 1; 1, 14, 2; 2, 6, -5];
OrigY = [1, 3, 1; -3, 1, 2; 10, 2, -5];
OrigZ = [1, -1, 3; -3, 14, 1; 10, 6, 2];

x = det(OrigX)/det(Orig)
y = det(OrigY)/det(Orig)
z = det(OrigZ)/det(Orig)

%% №8.2
disp('Number 8.2')
Orig = [1, -1, 0; -3, 0, 2; 10, 6, -5];
OrigX = [3, -1, 0; 1, 0, 2; 5, 6, -5];
OrigY = [1, 3, 0; -3, 1, 2; 10, 5, -5];
OrigZ = [1, -1, 3; -3, 0, 1; 10, 6, 5];

x = det(OrigX)/det(Orig)
y = det(OrigY)/det(Orig)
z = det(OrigZ)/det(Orig)

%% №9
disp('Number 9')
gauss = [1, -1, 0, 3; -3, 0, 2, 1; 10, 6, -5, 5];
D=rref(gauss);
x=D(:, 4)

%% №10
disp('Number 10')

A = [1, 2, 3; 4, 3, 5; 5, 7, 2];
B = [3, 2, 4; 3, 4, 5; 6, 5, 2];

ans = (2 * A)^3 - 4 * ((B * (A^(-1)) + 2 * eye(3))')

%% №11
disp('Number 11')

A = [-2, 4.5, 6, 8; -4, 6, 3.2, 6; 4, 8, 0, 3.9; 8, -2, 10, 7]
C = [-1; -4; 1; 8];
[L, U] = lu(A);

x = U \ (L \ C)
if round(A*x) == C
  disp('It works')
else
  disp('Something is wrong, I can feel it')
end

%% №12
disp('Number 12')

Ran = rand(5, 6)
Ran(end-1, end-1)

%% №13
disp('Number 13')

matrix = [1, -1, 1, 8; 2, 1, -3, -9; 3, -6, -5, 10];
OrigX = matrix(:, [4, 2, 3]);
OrigY = matrix(:, [1, 4, 3]);
OrigZ = matrix(:, [1, 2, 4]);

delta = det(matrix(:, [1, 2, 3]));
if delta~=0
  x = det(OrigX)/delta
  y = det(OrigY)/delta
  z = det(OrigZ)/delta
else
  disp('There is no direct solution')
end
