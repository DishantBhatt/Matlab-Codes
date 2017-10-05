 function tot = simp_meth(a,b,N)
 tic;
 f = @(x) sin(x.^3) .* exp(-(x.^3));
 X = linspace(a,b,N+1);
 tot = (b-a)/(3*N)*(f(a) + f(b) + 2*sum(f(X(3:2:N-1)))+ 4*sum(f(X(2:2:N))) );
 error = abs(tot - 0.205904604818111)
 toc
