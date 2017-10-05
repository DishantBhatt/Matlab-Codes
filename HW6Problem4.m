function p1 = HW6Problem4()

P = @(p) (1 + p)/2 * (p/(1 - p + p^2))^21;
ptest = .99;
ProbOfWin = P(.842400000000016)
while( P(ptest) >= .500)
    pbefore = ptest;
    ptest = ptest - .0001;
end 

p1 = pbefore;
end

