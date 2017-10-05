function sum = HW3Problem5()
sum = 0;
for jj = 1:999
    if mod(jj,3) == 0 || mod(jj,5) == 0
        sum = sum + jj;
    end
end
