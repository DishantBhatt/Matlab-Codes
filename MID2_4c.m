function MID2_4c

tol = 1e-8;
f = @(x) exp(x);
realInt = exp(3) - 1;
a = 0; b = 3;

approx = [midpoint(a, b, 2, f)];
cnt = 2;

while abs(approx(cnt-1) - realInt) > tol

cnt = cnt + 1;
new = midpoint(a, b, cnt, f);
approx(cnt-1) = new;
end

loglog(approx);

end

