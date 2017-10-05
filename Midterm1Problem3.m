function ans = Midterm1Problem3(a,b,x1,x0, N)

n0 = x0;
n1 = x1;
n = a*x1 + b*x0;
count = 2;

arrayn = [ n0 n1 n ]

 while(count < N)
     n0 = n1;
     n1 = n;
     n = a*n1 + b*n0
     arrayn = [ arrayn n ];
     count = count + 1;

 end

 X = linspace(0,N,N+1);
 semilogy(X,abs(arrayn));
 xlabel('N');
 ylabel('log(abs(Phi))');
 title('Sequence 2: a=-3,b=-1/2');
 
slope = (log(abs(arrayn(2:end))) - log(abs(arrayn(1:end-1))))./(X(2:end) - X(1:end-1));
slopecomp = mean(slope)
slopeanalytical = log(abs((1/2) * (a - ((abs(a))^2 + 4*b)^(1/2))))



 


