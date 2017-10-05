function tot = sumfun( nstop )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
tot = 0;
for jj=1:nstop
    tot = tot + (jj.^4 + 3*jj.^2);
end


end

