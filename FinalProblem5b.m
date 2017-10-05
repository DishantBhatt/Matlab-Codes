function x = FinalProblem5b(A,xk,b,tol)
   
temp = size(A);
sz = temp(1);



for j = 1:sz
    for k = 1:sz
        if A(j,k) > abs(A(j,j))
            disp('Not a diag Dominant');
            return;
        end
    end
end
   
D = [];
R = [];
   
for ii = 1:sz
    for jj = 1:sz
        if ii == jj
            D(ii,jj) = A(ii,jj);
            R(ii,jj) = 0;
            
        else
            D(ii,jj) = 0;
            R(ii,jj) = A(ii,jj);
        end
    end
end

invDR = -inv(D) * R;
invDB = inv(D) * b;

x = (invDR * xk) + invDB;
xArray{1} = x;
count = 2;
while norm((x - xk),2) >= tol
xk = x;
x = (invDR * xk) + invDB;
xArray{count} = x;
count = count + 1;
end
count

xTrue = A\b;

firstPoints = [];

for mm = 5:count-1
    test = xArray{mm};
    firstPoints = [firstPoints test(1)];
end
loglog(abs(firstPoints(4:end-5) - xTrue(1)), abs(firstPoints(5:end-4) - xTrue(1)));
yPoints = abs(firstPoints(5:end-4) - xTrue(1));
xPoints = abs(firstPoints(4:end-5) - xTrue(1));
rateConvergence = mean(abs((yPoints(2:end) - yPoints(1:end-1)))./(abs((xPoints(2:end) - xPoints(1:end-1)))))


