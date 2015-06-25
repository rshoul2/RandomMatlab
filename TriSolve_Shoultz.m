function [b,l,d,u] = TriSolve_Shoultz(b,l,d,u)
%Calculate L and U
for i = 1:length(b)-1
    l(i) = l(i)/d(i);
    d(i+1) = u(i) - l(i)*d(i+1);
end
    
% Ly = b (overwrite b with y)
for i = 2:length(b)
    b(i) = b(i) - l(i-1)*b(i-1);
end

%Ux = y
b(length(b)) = b(length(b))/d(length(b));
for i = length(b)-1:1
    b(i) = (b(i) - u(i)*b(i+1))/d(i);
end
end