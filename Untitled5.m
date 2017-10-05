function  = HW5binary_to_decimal()
function ans = HW5binary_to_int()
n1 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 1 0 1];
n2 = [0 1 1 1 0 1 0 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 0 1 0 0 1 1 0];

c1array = n1(13:64);
c2array = n2(13:64);
exp = -1;
f1 = 0;
f2 = 0;

for i = 1:11
    f1 = f1 + (c1array(i) * 2^exp);
    f2 = f2 + (c2array(i) * 2^exp);
    exp = exp -1;


end
f1
f2





end

