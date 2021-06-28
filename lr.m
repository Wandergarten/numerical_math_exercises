function [x, LR, p] = (A, b, LR, P, lrexists)
    n = size(A)(1);

    if (! lrexists)
        M = A;
        p = [1:n];
    else
        M = LR;
        p = P;
    endif

    for k = 1:n-1
        if (! lrexists)
            pivot = M(p(k), k);
            m = k;
            for i = k+1:n
    if abs(M(p(i), k)) > abs(pivot)
        m = i;
        pivot = M(p(i), k);
    endif  
        endfor
        tmp = p(k);
        p(k) = p(m);
        p(m) = tmp;
    endif

    for i = k+1:n
        if(! lrexists)
M(p(i), k) = M(p(i), k) / M(p(k), k);
for j = k+1:n
    M(p(i), j) = M(p(i), j) - M(p(i), k) * M(p(k), j);
endfor  
    endif
    b(p(i)) = b(p(i)) - M(p(i), k) * b(p(k));
    endfor
endfor   

z = ones(1, n);
z(p(n)) = b(p(n)) / M(p(n), n);
for i = n-1:-1:1
    tmp = b(p(i));
    for k = i+1:n
        tmp -= M(p(i), k) * z(p(k));
    endfor
    z(p(i)) = tmp / M(p(i), i);
endfor

x = zeros(1, n)
for i = 1:n
    x(i) = Z(p(i));
endfor

LR = M; 

endfunction