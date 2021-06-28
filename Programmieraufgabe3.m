A = [4, 1, -2, 3, 2, -1; 
    -1, 0, 1, -1, 0, 1;
    2, -1, 4, 3, 6, 3; 
    -4, 2, 0, -6, -4, 2;
    0, 2, 0, -2, 0, 2; 
    1, 5, 3, -4, 4, 8; 
    3, -2, 1, 5, 4, -1;
    3, 0, -4, 3, -1, -4];
b = [1; 
    -1; 
    3;
    4;
    -2;
    0;
    -3;
    1];
A = A(1:end, 1:5);
b = b(1:end);

[m, n] = size(A);
[Q, R] = myqr2(A);

p = rank(R);
S = R(1:p, p+1:end)
R = R(1:p, 1:p)
Rinv = zeros(p);
for i = 1:p;
    Rinv(1:p, i) = upTri(R, (1:p == i)');
end
Rinv
V = Rinv * S
L = mycholesky(eye(n - p) + V'*V)
s = Q'*b
s1 = s(1:p)
s2 = s(p + 1:end)
u = Rinv * s1
x2 = inv(L') * inv(L)*V'*u
x1 = u - V * x2
x = [x1; x2]
res = norm(A * x - b, 2)