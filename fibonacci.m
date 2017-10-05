function fib = fibonacci(n)
p0=1;
p1=1;
fib= [1 1];
for jj = 2:n
    pN = p0 + p1;
    p0 = p1;
    p1 = pN;
    fib = [fib(1:end) pN ];
end
fib
Ypoints = fib(2:end) - fib(1:end-1);
X = linspace(0,18,19);
Xpoints = X(2:end) - X(1:end-1);
slope = mean(Ypoints./Xpoints)


