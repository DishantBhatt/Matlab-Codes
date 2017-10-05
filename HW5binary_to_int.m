function ans = HW5binary_to_int()
n1 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1];
n2 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0];

c1array = n1(2:12);
c2array = n2(2:12);
exp = 10;
x1 = 0;
x2 = 0;

for i = 1:11
    x1 = x1 + (c1array(i) * 2^exp);
    x2 = x2 + (c2array(i) * 2^exp);
    exp = exp -1;


end
x1
x2

c1 = log2(abs(x1))
c2 = log2(abs(x2))

