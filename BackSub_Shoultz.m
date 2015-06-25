function b=BackSub_Shoultz(A,b)
[n,m] = size(A);
b(n) = b(n)/A(n,n);
for i = n-1:-1:1
    b(i,1) = (b(i,1) - A(i,i+1:n)*b(i+1:n))/A(i,i);
end
end