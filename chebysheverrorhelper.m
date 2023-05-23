
function T = chebysheverrorhelper(x, n)
T = 1;
for i = 1:n
    % 2x(T-1)  - (T-2) 
    %so, t1=x
    %    t2=2x(T1)-(T0)
    %    t3=2x(T2)-(T1)
    %    t4=2x(T3)-(T2)
    T = 2*x*chebysheverrorhelper(n-i,x) - chebysheverrorhelper(n-i-1, x); %formula to get the Cheby Polonomials
end

end