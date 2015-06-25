function A=GE(A)
[n,m] = size(A);
for j=1:n
        A(j+1:n,j) = A(j+1:n,j)/A(j,j);
        A(j+1:n,j+1:n) = A(j+1:n,j+1:n) - A(j+1:n,j)*A(j,j+1:n);
end
end