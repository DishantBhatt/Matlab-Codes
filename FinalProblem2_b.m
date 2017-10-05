function FinalProblem2_b(tol)

x = linspace(-.5,.5,1e6);

yVals = (x.*hyper_geo([1,1],2,-x, tol));

y = log(1+x);

semilogy(x,abs(yVals-y))
title('Hypergeo compared to true values');