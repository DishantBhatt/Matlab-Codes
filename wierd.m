 function xn = wierd(x0,N)
 fp = @(x) exp(-x.^2./2)/sqrt(2*pi);
 fx0 = trap_method(fp,0,x0,N)-.45;
 xn = x0 - fx0/fp(x0);
 while(abs(xn-x0)>=eps*abs(x0))
 x0 = xn;
 fx0 = trap_method(fp,0,x0,N)-.45;
 xn = x0 - fx0/fp(x0);
 end

 function tot = trap_method(f,a,b,N)
 X = linspace(a,b,N+1);
 tot = (b-a)/(2*N)*(f(a) + f(b) + 2*sum(f(X(2:N))));

 