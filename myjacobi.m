function result = myjacobi(F, x, h)
    result = zeros(length(F(x)), length(x));
    for(i=1:length(F(x)))
        for(j=1:length(x))
            result(i,j) = (F(x + h * eye(length(x))(:,j))(i) - F(x)(i))/h;
        end
    end
end