start = time; 
approx_exp(10^4, 1);
stop = time; 
disp(sprintf('time with for loop: %.16f', stop - start))

start = time; 
approx_exp2(10^4, 1);
stop = time; 
disp(sprintf('time without for loop: %.16f', stop - start))

