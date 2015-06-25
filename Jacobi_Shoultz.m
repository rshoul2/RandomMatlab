function [x,r,k] = Jacobi_Shoultz(A,b,x0,tol,K)
%
S=diag(diag(A));
T=S-A;
r=inf;
x=x0;
k=0;
%

while r>tol & k<K
        x=S\(b+T*x);
        r=norm(b-A*x)/norm(b);
        k=k+1;
end
end
        