F = @(x) [x(1) - cos(X(1))/4 + sin(x(2))/4; x(2) - cos(x(1))/4 + sin(x(2))/2];

z = mynewton(F, [0;0], 10^-9)
F(z)