function X = myinv(A)

sz = size(A);
firstVector = [1];

for i = 2:sz(1)
   firstVector = [firstVector, 0]; 
end

idVectorArrays = [transpose(firstVector)];

for j = 2:sz(1)
    tempVector = [0];
    for r = 2:sz(1)
        if r==j
            tempVector = [tempVector, 1];
        else
            tempVector = [tempVector, 0];
        end
    end
    idVectorArrays = [idVectorArrays, transpose(tempVector)];
end
    
[L,U,pA,sig] = lutx(A);
dVectors = [];

for ii=1:sz(1)
x = bslashtx(L,idVectorArrays(:,ii));
dVectors = [dVectors x];

end
X = [];

for jj=1:sz(1)
   x2 = bslashtx(U, dVectors(:,jj));
   X= [X x2];
end

X = X*pA;

