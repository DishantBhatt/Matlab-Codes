function FinalProblem1
 
 xvals = linspace(-1,1,1e4);
 f = @(x) exp(x).*cos(x);
 
 t1 = @(x) 1+x;
 t2 = @(x) 1+x;
 t3 = @(x) 1+x-((x.^3)./3);
 r1 = @(x) f(x) - t1(x);
 r2 = @(x) f(x) - t2(x);
 r3 = @(x) f(x) - t3(x);
 
 errorBound = @(x) exp(2)/6*x.^4;
 
 
figure(1)
plot(xvals,t1(xvals),'r',xvals,t2(xvals),'b',xvals,t3(xvals),'g',xvals,f(xvals),'k')
title('Taylor Series Compared to F(x)')
xlabel('x','FontSize',16,'FontWeight','bold')
legend('T1(x)','T2(x)','T3(x)','f(x)')
 
figure(2)
plot(xvals,r1(xvals),'r',xvals,r2(xvals),'b',xvals,r3(xvals),'g')
title('Errors')
xlabel('x','FontSize',16,'FontWeight','bold')
legend('R1(x)','R2(x)','R3(x)')
 
figure(3)
plot(xvals,r3(xvals),'r',xvals,errorBound(xvals),'b--',xvals,-errorBound(xvals),'b--')
title('R3 compared to the Error Bound')
xlabel('x','FontSize',16,'FontWeight','bold')
legend('R3(x)','Eb(x)')
 
 end
