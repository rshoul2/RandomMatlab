function x = Xdecomp(alu,g)

n = length(g);
x = zeros(n,1);

x(n)=g(n)/alu(n,n);
for i=n-1:-1:1
    x(i)=(g(i)-alu(i,i+1:n)*x(i+1:n))/alu(i,i);
end
end