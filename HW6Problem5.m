function root = HW6Problem5(x0, tol)
fx = @(x) x^2 - 16;
f1 = @(x) 2*x;

x = (1/2)*x0 + 16/(2*x0);
xprev = x0;
iteration = 1;
while abs(x - xprev) > tol*abs(x)
xprev = x;
x = (1/2)*x + 16/(2*x);
iteration = iteration + 1;

end
 iteration
 root = x;


end

