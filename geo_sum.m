function [ tot ] = geo_sum(X,tol)
tot = ones(length(X),1);
term = tot;
count = 1;
while(abs(tot) <= tol)
    term = term.* X;
    tot = tot + term;
    count= count +1;
end

end

