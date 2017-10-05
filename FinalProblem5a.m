function x = FinalProblem5a(A)

temp = size(A);
sz = temp(1);

x = 'diag dominant';


for j = 1:sz
    for k = 1:sz
        if A(j,k) > A(j,j)
            x = 'Not a diag Dominant';
            break;
        end
    end
    end
    
  
end