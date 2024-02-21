% Newton-Raphson yöntemiyle örnek problem çözümü

% x = 1;
% y = 1;

f = [-x^2-x*y+10; -y-3*x*y^2+57];

J(1, 1) = 2*x + y;
J(1, 2) = x;
J(2, 1) = 3 * y^2;
J(2, 2) = 1 + 6*x*y;

deltaXY = inv(J) * f;
x = x + deltaXY(1)
y = y + deltaXY(2)