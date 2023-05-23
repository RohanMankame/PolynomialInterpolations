
function [errors] = plot_chebyshev_error(f, degree)
%plot_chebyshev_error(@(x) exp(abs(x)),10)
x = -1:0.01:1; %set interval [-1,1]
T = chebysheverrorhelper( x,1:degree); %get Cheby polynomials using helper function

errors = abs(f(x) - T); %calc error by f-Chebypoly

% Plot the errors
figure
plot(x,errors)
title('Error')
xlabel('x')
ylabel('Error')

end