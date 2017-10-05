function int = high_order_trap(a,b,N1)

tic;
f = @(x) sin(x.^3) .* exp(-(x.^3));
dx = (b-a)/N1;
dx2 = dx/2;
Xpoints1 = linspace(a,b,N1+1);
Xpoints2 = linspace(a,b,(2*N1)+1);



Tx1 = (dx/2) * (f(a) + f(b) + 2.* sum(f(Xpoints1)));
Tx2 = (dx2/2) * (f(a) + f(b) + 2.* sum(f(Xpoints2)));

tot = (1/3) *(4*Tx2 - Tx1);
error = abs(tot - 0.205904604818111)
int = tot;

toc