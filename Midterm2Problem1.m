function root = Midterm2Problem1(a,A,m,tol)

f = @(x)x.^m - A;
f1 = @(x) m.*x.^(m-1);
x = a - f(a)/f1(a);
xprev = a;
xarray = [x];
while abs(x - xprev) > tol*abs(x)
xprev = x;
x = x - f(x)/f1(x);
xarray = [xarray x];
end
 exactRoot = 1.349282847673563;
 
 plot(log(abs(xarray(1:end-1) - exactRoot)), log(abs(xarray(2:end) - exactRoot)));
 title('A = 5, m = 10 loglog plot');
 xlabel('log(xprev - exactRoot)');
 ylabel('log(xn - exactRoot)');
 
 rateConvergence = mean(log(abs(xarray(2:end) - exactRoot))./log(abs(xarray(1:end-1) - exactRoot)))
 root = x;

end

