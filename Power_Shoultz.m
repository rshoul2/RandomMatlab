function [e,v,r,k] = Power_Shoultz(A,tol,N)
%
m = length(A);
x = rand(m,1);
r = inf;
e = 0;
k = 0;
%
while r > tol & k < N
    v = x/norm(x);
    x = A*v;
    enew = v'*x;
    r = abs(enew-e)/abs(enew);
    e = enew;
    k = k+1;
end
end