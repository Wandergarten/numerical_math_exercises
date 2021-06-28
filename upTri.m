function x = upTri(R, b)
    n = length(R);
    x = zeros(n, 1);
    for i = 1:n
        x(n - i + 1) = (b(n - i + 1) - (R * x) (n - i + 1)) / R(n - i + 1, n - i + 1);
    end