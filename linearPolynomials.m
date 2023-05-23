%Plese enter the inputs undernerath to call the function and get plot
%linearPolynomials(@(x) exp(abs(x)),10)
%linearPolynomials(@(x) exp(abs(x)),20)
% I was unable to find error 
function LinearPoly = linearPolynomials(f,n)
%plot f and set interval [-1,1]
fplot(f,[-1,1],'r') %create graph
hold on
nn=n+1;    
Xl=linspace(-1,1,nn);
Yl = f(Xl);     %calc y
plot(Xl,Yl) %plot
LinearPoly = polyfit(Xl,Yl,n);
xl= linspace(-1,1,2000);
yl= polyval(LinearPoly,xl); %make it fit for all points to 0.01 step
plot(xl,yl) %plot



legend('function','points')
title('linearPoly')
xlabel('x')
ylabel('y')
end