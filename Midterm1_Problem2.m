function binRep = Midterm1_Problem2(x)

c = 1023 + floor(log2(abs(x)))
d = abs(x) * (2^(-1*c)) - 1;

cArray =[];
fArray = [];

while(c > 0)
    c0 = mod(c,2);
    c = (c-c0)/2;
    cArray = [num2str(c0) cArray];
end



while d>0
    f1 = floor(2*d);
    d = 2*d -f1;
    fArray = [fArray f1];
end

binRep = [cArray '.' fArray];

end

