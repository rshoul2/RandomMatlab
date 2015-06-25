function [x,r,k] = Seidel_Shoultz(A,b,x0,tol,K)
%
S = tril(A,0);
T = S - A;
k=0;
x=x0;
r=inf;
%

while r>tol & k<K
    x = S\(b+T*x);
    r = norm(b-A*x)/norm(b)
    k = k + 1;
end
end