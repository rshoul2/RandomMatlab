function b = GESolve_Shoultz(A,b)
[n,m] = size(A);
for j=1:n
    A(j+1:n,j) = A(j+1:n,j)/A(j,j);
    A(j+1:n,j+1:n) = A(j+1:n,j+1:n) - A(j+1:n,j)*A(j,j+1:n);
end
L = tril(A,-1);
for i=1:n
    L(i,i) = 1;
end
U = triu(A);
for i = 1:n
    b(i,1) = (b(i,1) - L(i,1:i-1)*b(1:i-1,1))/L(i,i);
end
b(n) = b(n)/U(n,n);
for i = n-1:-1:1
    b(i,1) = (b(i,1) - U(i,i+1:n)*b(i+1:n))/U(i,i);
end
end