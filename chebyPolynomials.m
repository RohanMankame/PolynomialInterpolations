%Plese enter the inputs undernerath to call the function and get plot
%chebyPolynomials(@(x) exp(abs(x)),10)
%chebyPolynomials(@(x) exp(abs(x)),20)
% I was unable to find error 

%define function f, and num of nodes n 
function ChebyPoly = chebyPolynomials(f,n) 
%plot f and set interval [-1,1]
fplot(f,[-1,1],'r')       %create graph       
hold on
Tn=1:n+1;             %for calculating nodes          
nn=n+1;                         
%calc x values of Cheby nodes 
X=cos((2*Tn+1)*pi/(2*(nn)));   %calc cheby nodes    
Y = f(X);                      %calc y of nodes
plot(X,Y)                      %plot
ChebyPoly = polyfit(X,Y,n); 
x= linspace(-1,1,2000);         
y= polyval(ChebyPoly,x);       %make it fit for all points to 0.01 step
plot(x,y)                      %plot

               
legend('function','points') %labling 
title('ChebyPoly')
xlabel('x')
ylabel('y')
end


