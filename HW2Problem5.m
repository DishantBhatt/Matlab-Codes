function tot = HW2Problem5()
tot = 1;
term = 1;
jj = 1;

while (abs(tot) <= 2.718281828459045)
    term = term/jj;
    tot = tot + term;
    jj = jj + 1;
end


end

