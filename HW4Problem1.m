function [ output_args ] = HW4Problem1()
fx = @(x)exp(x) .* sin(x);
T1 = @(x) x;
T2 = @(x) x + x.^2;
T3 = @(x) x + x.^2 + (x.^3)/3;

X = linspace(-2,2,10);
YT1 = T1(X);
YT2 = T2(X);
YT3 = T3(X);
Yfx = fx(X);

plot(X,YT1,'--b','LineWidth',3);
hold on;
plot(X,YT2,':r','LineWidth',3);
plot(X,YT3,':g','LineWidth',3);
plot(X,Yfx, '-m','LineWidth',1.5);
title('Graph of f(x), T1, T2, and T3');
legend('T1','T2','T3','f(x)');
hold off;

end

