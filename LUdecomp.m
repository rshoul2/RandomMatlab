function x = LUdecomp(alu,b)

n=length(b);
x=zeros(n,1);
g=zeros(n,1);

%forward sub
g(1)=b(1);
for i=2:n
    g(i)=b(i)-alu(i,i-1:-1:1)*g(i-1:-1:1);
end

%back sub
x(n)=g(n)/alu(n,n);
for i=n-1:-1:1
    x(i)=(g(i)-alu(i,i+1:n)*x(i+1:n))/alu(i,i);
end
end