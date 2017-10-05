function slope = HW3Problem6()
X = linspace(0,10,100);
Y =3*X + 4;

yPoints = Y(2:end) - Y(1:end-1);
xPoints = X(2:end) - X(1:end-1);

slope =(yPoints./xPoints);
maxval = max(slope)
minval = min(slope)
average = mean(slope)