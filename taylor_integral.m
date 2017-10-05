function integral = taylor_integral()
fx = @(x) cos(cos(x.^2));
T1 = @(x) 2.*x.*sin(x.^2).*sin(cos(x.^2));
T2 = @(x) (2.*sin(x.^2)+4.*x.^2.*cos(x.^2)).*sin(cos(x.^2))-4.*x.^2.*sin(x.^2).^2.*cos(cos(x.^2));
T3 = @(x)-4.*x.*((2.*x.^2.*sin(x.^2).^3+2.*x.^2.*sin(x.^2)-3.*cos(x.^2)).*sin(cos(x.^2))+(3.*sin(x.^2).^2+6.*x.^2.*cos(x.^2).*sin(x.^2)).*cos(cos(x.^2)));

x0 = (5*pi)/12;
integral = @(x) fx(x0) + T1(x0).*(x-x0) + (T2(x0) .* (x-x0).^2)./2 + (T3(x0) .* (x-x0).^3)./6;


end

