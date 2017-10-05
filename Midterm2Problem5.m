function root = Midterm2Problem5(x,tol)

f = @(x) cos(3.*x).^4-2.*sin(4.*x).^3;
f1 = @(x) -12.*(2.*cos(4.*x).*sin(4.*x).^2+cos(3.*x).^3.*sin(3.*x));
f2 = @(x) 96.*sin(4.*x).^3-192.*cos(4.*x).^2.*sin(4.*x)+108.*cos(3.*x).^2.*sin(3.*x).^2-36.*cos(3.*x).^4;

   xprev = x;
   fx = f(x);
   f1x = f1(x);
   f2x = f2(x);
   
   x = xprev - (fx/f1x) - (f2x/(2*f1x))*(fx/f1x)^2;
xarray =[x];

while (abs(xprev - x) >= tol)
   xprev = x;
   fx = f(x);
   f1x = f1(x);
   f2x = f2(x);
   
   x = xprev - (fx/f1x) - (f2x/(2*f1x))*(fx/f1x)^2;
   xarray = [xarray x];
   
    
    
end
xarray;
exactRoot = 0.702673883087136;
plot(log(abs((xarray(1:end-1) - exactRoot))),log(abs((xarray(2:end) - exactRoot))));
title('root: .702');
xlabel('xprev - exactroot');
ylabel('x - exactroot');
rateConvergence = log(abs((xarray(2:end) - exactRoot)))/log(abs((xarray(1:end-1) - exactRoot)))
root = x;

