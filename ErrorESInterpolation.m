function [error] = ErrorESInterpolation(f, n)
%ErrorESInterpolation(@(x) exp(abs(x)),10)
%define function f, and num of nodes n 

% Create a vector of evenly spaced nodes
X = linspace(-1, 1, n + 1);

% Evaluate f at the evenly spaced nodes
Y = f(X);

% Fit a polynomial to the evenly spaced nodes and f
P = polyfit(X, Y, n);

% Find the error
error =abs(f(X) - polyval(P, X,2000));

% Plot the error
figure
plot(X, abs(f(X) - polyval(P, X,2000)), 'k-')
title('Error in Evenly Spaced Interpolation')
xlabel('x')
ylabel('y')
legend('Error')

% Print the error
fprintf('The error is %f\n', error)

end