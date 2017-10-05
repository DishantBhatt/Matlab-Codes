function pN = HW3Problem2(n)
p0 = 1;
p1 = 2;

for jj = 2:n
    pN = 3*p1 + 2*p0;
    p0 = p1; 
    p1 = pN;
   
end