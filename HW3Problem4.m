function sum = HW3Problem4()
p0 = 1;
p1 = 2;
pN = 0;
sum = 2;
while( p0 + p1 < 4e6)
    pN = p1 + p0;
    p0= p1;
    p1 = pN;
    
    if mod(pN,2) == 0
        sum = sum + pN;
    end
    
    
end
pN