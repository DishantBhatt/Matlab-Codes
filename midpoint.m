function tot=midpoint(fx,a,b,N)
    dx = (b-a)/N;
    xPoints = linspace(a,b,N+1);
    tot = dx*sum(fx(xPoints(1:N)+dx/2));
end

