function ans =  HW5binary_to_decimal()
n1 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1];
n2 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0];

c1array = n1(13:64);
c2array = n2(13:64);
exp = -1;
f1 = 0;
f2 = 0;

for i = (1:52)
    f1 = f1 + (c1array(i) * 2^exp);
    f2 = f2 + (c2array(i) * 2^exp);
    exp = exp -1;


end
f1
f2

n1_in_decimal = (1 + f1) * 1879
n2_in_decimal = (1 + f2) * 1879

sum_in_binary = dec_to_bin(n1_in_decimal + n2_in_decimal)
diff_in_binary = dec_to_bin(n2_in_decimal - n1_in_decimal)

end

