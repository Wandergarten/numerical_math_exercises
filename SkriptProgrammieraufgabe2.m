for m = [5 10 20]

A = diag((1:m).^1) + diag(-1 * ones(m - 1, 1), 1) + diag(-1 * ones(m-1,1),1);
D = diag(1./sum(abs(A)));

LR = zeros(m,m);
p = zeros(1, m);
Ainv = [];
DAinv= [];
for(l = 1:1:m)
    e = zeros(m,1);
    e(l) = 1;
    [x, LR, p] = lr(A, e, LR, P, false);
    Ainv(:, end + 1) = x';
    [y, LR, p] = lr(D * A, e, LR, P, false);
    DAinv(:, end + 1) = y';
end
disp(sprintf('m=%i:', m))
disp(sprintf('cond(A)=%d', norm(A, inf) * norm(Ainv, inf)))
disp(sprintf('cond(D * A)=%d', norm(D * A, inf) * norm(DAinv, inf)))
end