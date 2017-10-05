function root = HW6Problem6(a,tol)
f = @(x)x.*cos(x) - sin(x).^2;
f1 = @(x) cos(x)-(2.*cos(x)+x).*sin(x);
x = a - f(a)/f1(a);
xprev = a;
ArrayofXn = [x];
while abs(x - xprev) > tol*abs(x)
xprev = x;
x = x - f(x)/f1(x);
ArrayofXn = [x ArrayofXn];
end
ArrayofXn
 root = x;


end

