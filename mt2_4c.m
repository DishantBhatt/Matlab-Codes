function slope=mt2_4c

f=@(x) (cos(x)).^2;
a=0;
b=2;
tint=integral(f,0,2);
NVals=[1e1 1e2 1e3 1e4 1e5 1e6]';
EVals=zeros(length(NVals),1);

for jj=1:length(NVals)
    tot=midterm_midpoint(f,a,b,NVals(jj));
    EVals(jj)=log10(abs(tot-tint));
end

logPoints=log10(NVals);
plot (logPoints,EVals);
slopes=(EVals(2:end)-EVals(1:end-1))./(logPoints(2:end)-logPoints(1:end-1));

disp('Minimum Slope'); disp(min(slopes));
disp('Maximum Slope'); disp(max(slopes));
disp('Mean Slope'); disp(mean(slopes));

end