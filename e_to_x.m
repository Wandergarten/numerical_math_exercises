function e_to_x = exp_taylor(x,n)
e_to_x = 0;
for k = 1:n
e_to_x = e_to_x + (x^(k-1))/factorial(k-1);
end
end
approx = exp_taylor(1,3);
fprintf("Approximate value %.8f\n",approx);
fprintf("True value %.8f\n",exp(1));
truevalue = exp(1);
relerror = abs(truevalue - approx)/truevalue;
fprintf("Relative error is: ");
disp(relerror);
aberror = abs(truevalue - approx)/approx;
fprintf("Absolute error is: ");
disp(aberror);