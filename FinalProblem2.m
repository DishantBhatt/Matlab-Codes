function FinalProblem2(n, tol)
x = linspace( -.5, .5, 1e6);
hold on

yValues = ((1/(factorial(n))).*(x./2).^(n).*hyper_geo([], n+1,(-(x.^2)./4), tol));
bessel_plotter(-.5, .5, 1e6, n, tol)
plot(x,yValues)

title('bessalplotter and hypergeo');
hold off

