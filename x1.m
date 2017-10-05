function x1,x2 = HW5Problem3(a,b,c)
rvals = roots( [a b c]);

x1 = (-b + sqrt(b^2 - (4*a*c)))/(2*a);
x2 = (-b - sqrt(b^2 - (4*a*c)))/(2*a);

rvals(1)
rvals(2)
end

