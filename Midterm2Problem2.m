function int = Midterm2Problem2(a,b)
f = @(x) sin(x.^3) .* exp(-(x.^3));
N1 = 20;
dx = (b-a)/N1;
dx2 = dx/2;
Xpoints1 = linspace(a,b,N1+1);
Xpoints2 = linspace(a,b,(2*N1)+1);



Tx1 = (dx/2) * (f(a) + f(b) + 2.* sum(f(Xpoints1)));
Tx2 = (dx2/2) * (f(a) + f(b) + 2.* sum(f(Xpoints2)));

int1 = (1/3) *(4*Tx2 - Tx1);


intapp = [int1];

for N = 21:1000
dx = (b-a)/N;
dx2 = dx/2;
Xpoints1 = linspace(a,b,N+1);
Xpoints2 = linspace(a,b,(2*N)+1);

                  

Tx1 = (dx/2) * (f(a) + f(b) + 2.* sum(f(Xpoints1)));
Tx2 = (dx2/2) * (f(a) + f(b) + 2.* sum(f(Xpoints2)));

estint = (1/3) *(4*Tx2 - Tx1);
intapp = [intapp estint];
end
integralexact = 0.205904604818111;
Npoints = linspace(20,1000,981);



Errors = abs(intapp - integralexact);

plot(log(Npoints),log(Errors));
title('Rate of Convergence Line, #2');
xlabel('log(n)');
ylabel('log(Errors)');

slope = mean((log(Errors(2:end)) - log(Errors(1:end-1)))/(log(Npoints(2:end)) - log(Npoints(1:end-1))))
