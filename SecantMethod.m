function x2 = SecantMethod( x0,x1,tol )
f = @(x)-(x-2)^(1/2);
f0 = f(x0);
f1 = f(x1);
x2 = x1 - (x1-x0)*f1/(f1-f0);

while(abs(x2-x1) >= tol * abs(x1))
    x0 = x1;
    x1 = x2;
    f0 = f1;
    f1 = f(x1);
    x2 = x1 - (x1-x0)*f1/(f1-f0);
end


end

