function b = ForSub(A,b)
[n,m] = size(A);
for i = 1:n
    b(i,1) = (b(i,1) - A(i,1:i-1)*b(1:i-1,1))/A(i,i);
end
end