function int = Midterm2Problem4(a,b)
f = @(x) exp(x);
N1 = 50;
dx = (b-a)/N1;
Npoints = linspace(0,3,N1);
intapp = 0;

for i = 1:N1-1
    mp = (Npoints(i) + Npoints(i+1))/2;
    intapp = intapp + (f(mp)*dx);
end
    
intarray = [intapp];

for N = 51:5000
    intapp = 0;
    dx = (b-a)/N;
    Npoints = linspace(0,3,N);
    for i = 1:N-1
        mp = (Npoints(i) + Npoints(i+1))/2;
        intapp = intapp + (f(mp)*dx);
    end
    intarray = [intarray intapp];
end

intexact =  19.085536923187664;
Errors = abs(intarray - intexact);
intarray;
Npoints = linspace(50,5000,4951);

plot((Npoints), log(Errors));
title('Increase in N vs Error');
xlabel('N');
ylabel('log(Errors)');

slope = (log(Errors(2:end)) - log(Errors(1:end-1)))./((Npoints(2:end)) - (Npoints(1:end-1)));
slope = mean(slope)


