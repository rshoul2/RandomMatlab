function [e,v,r,k] = SIP_Shoultz(A,s,tol,N)
%
m = length(A);
x = rand(m,1);
r = inf;
e = 0;
k = 0;
%
while (r > tol && k < N)
    v = x/norm(x);
    x = (A - s*eye(m))\v;
    enew = v'*x;
    r = abs(enew-e)/abs(enew);
    e = enew;
    k=k+1;
end
e = s + 1/e;
end