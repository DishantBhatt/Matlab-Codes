function time = HW7Problem2(m,n,V0,Vt,Vc,Rinf)

Ft = @(v) m./(-Rinf .* ((2./(1+exp((-v.^2)./(Vc.^2))) - 1)));

dx = (Vt - V0)/n;

X = linspace(V0,Vt,n+1);

time = (dx/2) * (Ft(V0) + Ft(Vt) + 2*sum(Ft(X(2:end-1))));


end

