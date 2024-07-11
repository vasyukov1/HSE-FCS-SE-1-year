##pkg load symbolic
%%1
##A = rand([7, 5])
##[x, y] = size(A)

%%2

##vector = [0, 3, 4, 18, 256];
##x = (vector ~= 4)

%%3
##a = [1 5;3 -2];
##b = [-3 1;5 2];
##a*b

%%4

##a = [0, 5, 3;4, 5, 7;3, 3, 2]

%%5

##det([1, 5, 7, 2;0, 6, 3, 7;-2, -8, -7, -3;-1, -6, -5, -4])

%%6

##A = [-5 -5];
##B = [1 2];
##C = [5 -3];
##hold on
##axis equal
##quiver(A(1), A(2), B(1) - A(1), B(2) - A(2), 0, 'Color', 'b', 'LineWidth', 5)
##quiver(A(1), A(2), C(1) - A(1), C(2) - A(2), 0, 'Color', 'r', 'LineWidth', 5)
##quiver(B(1), B(2), C(1) - B(1), C(2) - B(2), 0, 'Color', 'b', 'LineWidth', 5)
##
##text(A(1), A(2), '{\bfA(-5, -5)}');
##text(B(1), B(2), '{\bfB(1, 2)}');
##text(C(1), C(2), '{\bfC(5, -3)}');
##
##text((A(1) + B(1))/2, (A(2) + B(2))/2, '{\bfAB}');
##text((C(1) + B(1))/2, (C(2) + B(2))/2, '{\bfBC}');
##text((C(1) + A(1))/2, (C(2) + A(2))/2, '{\bfAC}');
##
##grid on
##
##hold off

%%7

##a1 = [5, 4, 5];
##b1 = [1, 2, 3];
##c = a1 + b1;
##hold on
##quiver3([0, 0], [0, 0], [0, 0], [a1(1), b1(1)], [a1(2), b1(2)], [a1(3), b1(3)], 0, 'Color', 'b', 'LineWidth', 5)
##quiver3(0, 0, 0, c(1), c(2), c(3), 0, 'Color', 'r', 'LineWidth', 5)
##text(a1(1)/2, a1(2)/2, a1(3)/2, '{\bfa1}')
##text(b1(1)/2, b1(2)/2, b1(3)/2, '{\bfb1}')
##text(c(1)/2, c(2)/2, c(3)/2, '{\bfc}')
##view(15,60)
##grid on

%%8
##c = [3, 4, 5];
##ox = [1, 0, 0];
##oy = [0, 1, 0];
##oz = [0, 0, 1];
##
##cox = acosd(dot(c, ox)/norm(c)/norm(ox))
##coy = acosd(dot(c, oy)/norm(c)/norm(oy))
##coz = acosd(dot(c, oz)/norm(c)/norm(oz))
##eps = 0.000001;
##if (cosd(cox)^2 + cosd(coy)^2 + cosd(coz)^2) - 1 < eps
##  disp('everything is alright')
##else
##  disp('something is wrong, I can feel it')
##end

%%9
##
##a = [4, 3, 5];
##b = [3, 2, 1];
##
##if (a + b) == (b + a)
##  disp('everything is alright')
##else
##  disp('something is wrong, I can feel it')
##end
##
##if isequal((a + b), (b + a))
##  disp('everything is alright')
##else
##  disp('something is wrong, I can feel it')
##end
##
##hold on
##quiver3([0, b(1)], [0, b(2)], [0, b(3)], [a(1), a(1)], [a(2), a(2)], [a(3), a(3)], 0, 'Color', 'b', 'LineWidth', 2)
##quiver3([0, a(1)], [0, a(2)], [0, a(3)], [b(1), b(1)], [b(2), b(2)], [b(3), b(3)], 0, 'Color', 'r', 'LineWidth', 2)
##text(a(1)/2, a(2)/2, a(3)/2, '{\bfa}')
##text(b(1)/2, b(2)/2, b(3)/2, '{\bfb}')
##text(b(1) + a(1)/2, b(2) + a(2)/2, b(3) + a(3)/2, '{\bfa}')
##text(a(1) + b(1)/2, a(2) + b(2)/2, a(3) + b(3)/2, '{\bfa}')
##grid on
##view(15, 30)

%%10
a = [2, 3, 4];
b = [3, 5, 2];
c = [1, 1, 1];

if (a + b) + c == a + (b + c)
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

if isequal((a + b) + c, a + (b + c))
  disp('everything is alright')
else
  disp('something is wrong, I can feel it')
end

hold on
quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'Color', 'b', 'LineWidth', 2)
quiver3(a(1), a(2), a(3), b(1) + c(1), b(2) + c(2), b(3) + c(3), 0, 'Color', 'g', 'LineWidth', 2)
quiver3(0, 0, 0, a(1) + b(1), a(2) + b(2), a(3) + b(3), 0, 'Color', 'r', 'LineWidth', 2)
quiver3(a(1) + b(1), a(2) + b(2), a(3) + b(3), c(1), c(2), c(3), 0, 'Color', 'c', 'LineWidth', 2)
text(a(1)/2, a(2)/2, a(3)/2, '{\bfa}')
text((a(1) + b(1))/2, (a(2) + b(2))/2, (a(3) + b(3))/2, '{\bfa+b}')
text(a(1) + (b(1) + c(1))/2, a(2) + (b(2) + c(2))/2, a(3) + (b(3) + c(3))/2, '{\bfb+c}')
text((a(1) + b(1)) + c(1)/2, (a(2) + b(2)) + c(2)/2, (a(3) + b(3)) + c(3)/2, '{\bfc}')
grid on
view(60, 5)
