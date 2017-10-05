function ans =  Midterm_Mantissa_to_Decimal()
n1 = [1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 0];

j = 1;
i = 1;
ans = 0;
    while(i <= 52)
    ans = ans + n1(i)/(2^(j));
    j = j + 1;
    i = i+1;


end


end

