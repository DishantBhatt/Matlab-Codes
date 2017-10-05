function root = NewtonsMethod(a,tol)

f = @(x)816.*x.^3 - 3835.*x.^2 + 6000.*x - 3125;
f1 = @(x) 2448*x^2-7670*x+6000
x = a - f(a)/f1(a);
xprev = a;
while abs(x - xprev) > tol*abs(x)
xprev = x;
x = x - f(x)/f1(x);

end
 root = x;

end

