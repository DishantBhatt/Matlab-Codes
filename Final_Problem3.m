function count = Final_Problem3(a,A,tol)

gx = @(x) (x.^2 + (1/4))./(2.*x - A);
xprev = a;
x = gx(a);
xarray = [x];
count = 1;


while abs(xprev - x) > tol
    xprev = x;
    x = gx(xprev);
    xarray = [xarray x];
    count = count +1;
    
    
end


p = [1 -A -(1/4)];
root = roots(p);



exactRoot = root(1);
xprev = log(abs(xarray(3:end-2) - exactRoot));
xnext = log(abs(xarray(4:end-1) - exactRoot));
 plot(xprev, xnext);
 title('A = 7,loglog plot');
 xlabel('log(xprev - exactRoot)');
 ylabel('log(xn - exactRoot)');
 
 x
 rateConvergence = mean(xnext/xprev)

