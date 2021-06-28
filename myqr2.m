function [Q, R] = myqr2(A)

[m, n] = size(A);
Q = eye(m);

for j = 1:n 
    for k = (j + 1):m 
        if abs(A(k,j)) < 10^-10 continue;
        end
        if (abs(A(j,j)) >= abs(A(k,j)))
            tau = A(k,j) / abs(A(j,j));
            a = 1 / sqrt(1 + tau^2) / sign(A(j,j));
            b = tau * a * sign(A(j,j));
        else
            tau = A(j,j) / abs(A(k,j));
            b = 1 / sqrt(1 + tau^2) / sign(A(k,j));
            a = tau * b * sign(A(k,j));
        end
        T = eye(m);
        T(j,j) = a; 
        T(k,k) = a; 
        T(j,k) = b;
        T(k,j) = b;
        A = T * A; 
        Q = Q * T;
    end
R = A;
end