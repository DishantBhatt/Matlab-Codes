function aArray = tester()

aArray = [Final_Problem3(300,3,1e-5)]
    
for i = 4:50
    aArray = [aArray Final_Problem3(300,i,1e-5)];
        
end

xPoints = linspace(3,50, 48);

plot(xPoints, aArray)
title('A = 3 to 50 vs the amount of iterations to converge to the root');
xlabel('A');
ylabel('# of iterations');

        
    

