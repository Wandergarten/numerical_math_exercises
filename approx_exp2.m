function result = approx_exp2(N,x)
    k = 1:1:N;
    result = 1 + sum(x.^k./factorial(k));
end