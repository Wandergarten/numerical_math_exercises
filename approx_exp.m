function result = approx_exp(N,x)
    result = 1;
    for (k = 1:1:N)
        result = result.+x.^k./factorial(k);
    end
end