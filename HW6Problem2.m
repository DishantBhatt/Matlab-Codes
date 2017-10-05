function tot = HW6Problem2()
X = linspace(1.43,1.71,20);
px = @(x)816.*x.^3 - 3835.*x.^2 + 6000.*x - 3125;

plot(X,px(X));
hold on;
plot([1.4 1.71], [0 0], 'k-');
plot(1.666666666666684, px(1.666666666666684), 'r*');
plot(1.562499999999985, px(1.562499999999985), 'r*');
plot(1.470588235294116, px(1.470588235294116), 'r*');
title('Problem 2 Graph w/ 3 roots');
hold off;






end

