function pN = gen_fib(a,b,s0,s1,n)

p0 = s0;
p1 = s1;

for jj = 2:n
    pN = a*p1 + b*p0;
    p0 = p1; 
    p1 = pN;

end