%% Number 1
disp('Number 1')

A = [0 1 0 8 0 0 5
     3 0 0 6 1 0 0
     4 8 0 0 0 0 1
     8 2 0 0 2 0 0
     0 0 3 0 9 0 0
     0 0 1 2 0 1 0
     0 1 0 1 0 0 1];
AN = sparse(A)
newA = full(AN);
isequal(newA, A)

%% Number 2
disp('Number 2')

A = [0 1 0 8 0 0 5
     3 0 0 6 1 0 0
     4 8 0 0 0 0 1
     8 2 0 0 2 0 0
     0 0 3 0 9 0 0
     0 0 1 2 0 1 0
     0 1 0 1 0 0 1];
AN = sparse([1 1 1 2 2 2 3 3 3 4 4 4 5 5 6 6 6 7 7 7]',
            [2 4 7 1 4 5 1 2 7 1 2 5 3 5 3 4 6 2 4 7]',
            [1 8 5 3 6 1 4 8 1 8 2 2 3 9 1 2 1 1 1 1]', 7, 7)
A2 = full(AN);
isequal(A, A2)
whos A A2 AN

%% Number 3
disp('Number 3')

A = [0 1 0 8 0 0 5
     3 0 0 6 1 0 0
     4 8 0 0 0 0 1
     8 2 0 0 2 0 0
     0 0 3 0 9 0 0
     0 0 1 2 0 1 0
     0 1 0 1 0 0 1];
AN = sparse(A);

[~,~,nz]=find(AN)

%% Number 4
disp('Number 4')

A = [0 1 0 8 0 0 5
     3 0 0 6 1 0 0
     4 8 0 0 0 0 1
     8 2 0 0 2 0 0
     0 0 3 0 9 0 0
     0 0 1 2 0 1 0
     0 1 0 1 0 0 1];
save("AN.dat","AN")
load AN.dat
AN = spconvert(AN);
A1 = full(AN);
isequal(A1, A)

%% Number 5
disp('Number 5')


A = [0 1 0 8 0 0 5
     3 0 0 6 1 0 0
     4 8 0 0 0 0 1
     8 2 0 0 2 0 0
     0 0 3 0 9 0 0
     0 0 1 2 0 1 0
     0 1 0 1 0 0 1];

B = [0 8 4 3 0 0 0 0 0 0
     1 0 2 8 0 1 0 0 0 0
     0 1 3 0 0 0 0 0 0 0
     0 1 2 0 0 0 6 8 0 0
     0 0 0 0 9 2 0 1 0 0
     0 0 0 0 1 0 0 0 0 0
     0 0 0 0 1 0 0 0 1 5];
d = [-5 -3 -2 -1 0 1 2 3 4 6]';
Adiag = spdiags(B, d, 7, 7);
A1 = full(Adiag);
isequal(A1, A)

%% Number 6
disp('Number 6')

B = [1 0 4 8 0 0 0
     0 0 0 0 1 0 1
     4 0 1 0 0 0 1
     8 0 0 0 0 2 0
     0 1 0 0 1 0 0
     0 0 0 2 0 1 0
     0 1 1 0 0 0 1];
BN = sparse(B);
newB = full(BN);
isequal(newB, B)

C = [0 0 8 4 1 0 0 0 0
     1 0 1 0 0 0 0 0 0
     0 1 0 0 1 4 0 0 0
     0 0 0 2 0 0 8 0 0
     0 0 0 0 1 0 1 0 0
     0 0 0 0 1 2 0 0 0
     0 0 0 0 1 0 0 1 1];
d = [-5 -4 -3 -2 0 2 3 4 5]';
Bdiag = spdiags(C, d, 7, 7);
B1 = full(Bdiag);
isequal(B1, B)

whos B B1 Bdiag C d

%% Number 7
disp('Number 7')
figure('Name', 'Number 7', 'NumberTitle', 'off')
B = [1 0 4 8 0 0 0
     0 0 0 0 1 0 1
     4 0 1 0 0 0 1
     8 0 0 0 0 2 0
     0 1 0 0 1 0 0
     0 0 0 2 0 1 0
     0 1 1 0 0 0 1];
spy(B)
title('function spy on matrix B')

%% Number 8
disp('Number 8')
figure('Name', 'Number 8', 'NumberTitle', 'off')

B = [1 0 4 8 0 0 0
     0 0 0 0 1 0 1
     4 0 1 0 0 0 1
     8 0 0 0 0 2 0
     0 1 0 0 1 0 0
     0 0 0 2 0 1 0
     0 1 1 0 0 0 1];

b=symrcm(B);
Bs=full(B(b,b));

subplot(1, 2, 1)
spy(B)
title('function spy on matrix B')

subplot(1, 2, 2)
spy(Bs)
title('function spy on matrix Bs')

%% Number 9
disp('Number 9')

C = [8 1 1 1 1
     1 8 0 0 1
     1 0 8 0 0
     1 0 0 8 0
     1 1 0 0 8];
L = chol(C,'lower');
R = chol(C);

c=symrcm(C)
Cs=full(C(c,c))

Ls = chol(Cs,'lower');
Rs = chol(Cs);
[~, ~, Lnz] = find(L);
[~, ~, Rnz] = find(R);
[~, ~, Lsnz] = find(Ls);
[~, ~, Rsnz] = find(Rs);
length(Lnz)
length(Rnz)
length(Lsnz)
length(Rsnz)
