function [x,r,k] = Sor_Shoultz(A,b,x0,tol,K,sigma)
%
omega = 1/sigma;
S = tril(A,-1)+(sigma*diag(diag(A)));
T = S - A;
r = inf;
x = x0;
k = 0;
%
while r>tol && k<K
    x = S\(b+T*x);
    r = norm(b-A*x)/norm(b);
    k = k + 1;
end
end

