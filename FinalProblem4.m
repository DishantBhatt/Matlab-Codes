function slope = FinalProblem4

f=@(x) (cos(x)).^2;
a=0;
b=2;
intExact=integral(f,0,2);
nValues=[1e1 1e2 1e3 1e4 1e5 1e6]';
errors =zeros(length(nValues),1);

for i=1:length(nValues)
    tot=midpoint(f,a,b,nValues(i));
    errors(i)=log10(abs(tot-intExact));
end

logPoints=log10(nValues);
plot (logPoints,errors);
title('N values vs errors, loglog plot');
xlabel('log(N)');
ylabel('errors');
slopes=(errors(2:end)-errors(1:end-1))./(logPoints(2:end)-logPoints(1:end-1));


disp('Average Slope'); 
mean(slopes)

end