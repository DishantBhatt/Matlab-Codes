function tot = wierd_sum(n)
X = linspace(0,n,n+1)
tot = sum(cos(pi* ((X.^3/n.^3) + (4*X)/n)));



end

