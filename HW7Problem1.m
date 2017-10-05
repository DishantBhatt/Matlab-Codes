function tot = HW7Problem1(a,b)

fx = @(x)2./(1 + x.^2);
h = (b-a)/(4-1);
X = linspace(1,4-2,4-2);
int1 = (h/2)*fx(a) + h*sum(fx(a+X*h))+(h/2)*fx(b);
intfx = [ int1 ];

n = 5;

 while(n <= 2000)
     h = (b-a)/(n-1);
     X = linspace(1,n-2,n-2);
     newint = (h/2)*fx(a) + h*sum(fx(a+X*h))+(h/2)*fx(b);
     intfx = [intfx newint ];
     n = n +1;
 end
N = linspace(4,2000,2000 - 3);
integralExact = 3.141592653589793;

Errors = abs(intfx - integralExact);

plot(log(N),log(Errors));
hold on;
xlabel('log of n(n=4-2000)');
ylabel('Errors');
title('Problem1 Error Analysis');
hold off;

slope = (log(Errors(2:end)) - log(Errors(1:end-1)))./(log(N(2:end)) - log(N(1:end-1)));
slope = mean(slope)






end

