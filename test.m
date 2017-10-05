function pN = test()

p0 = 1;
p1 = 1;

for jj = 2:6
    pN = p1 + p0;
    p0 = p1; 
    p1 = pN;

end