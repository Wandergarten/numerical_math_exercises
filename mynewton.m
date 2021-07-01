function result = mynewton(F, xalt, err)
    while(norm(F(xalt), inf) > err)
        xneu = xalt - myjacobi(F, xalt, 10^-6) \ F(xalt);
        disp(sprintf('||F(x)|| = %d', norm(F(xalt))))
        if(norm(myjacobi(F, xalt, 10^-6)\F(xneu)) > 0.5 * norm(myjacobi(F, xalt, 10^-6 )\F(xalt)))    
            disp('monotony test: choose new start value');
            result = inf. * xalt;
            return;
        end
        xalt = xneu;
    end
    result = xalt;
end
