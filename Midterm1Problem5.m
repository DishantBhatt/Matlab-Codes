function roots = Midterm1Problem5(a,b,c);

if(b > 0)
    x1 = (2*c)/(-b - (b^2 - 4*a*c)^(1/2));
    x2 = (-b - (b^2 - 4*a*c)^(1/2))/(2*a);
end

if (b < 0)
    
    x1 = (2*c)/(-b +(b^2 - 4*a*c)^(1/2));
    x2 = (-b + (b^2 - 4*a*c)^(1/2))/(2*a);
end

x1
x2
classicroot1 = (-b -(b^2 - 4*a*c)^(1/2))/(2*a)
classicroot2 = (-b + (b^2 - 4*a*c)^(1/2))/(2*a)

end

